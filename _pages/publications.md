---
layout: page
permalink: /publications/
title: Publications
description:
years_papers: [2023, 2021, 2020, 2019, 2018]
years_theses: [2022, 2016, 2012]
nav: true
nav_order: 1

---

<!-- _pages/publications.md -->

<div class="publications">

My publications in reverse-chronological order. As of {{ "now" | date: '%B %d, %Y' }}, my academic work received {{ site.data.gscholar.total_citations }} citations by the research community. Please find most up-to-date citation metrics via <a href="https://gscholar.patrickkastner.de">Google Scholar</a>.





{%- for y in page.years_papers %}
  <h2 class="year">{{y}}</h2>
  {% bibliography -f papers -q @*[year={{y}}]* %}
{% endfor %}

<h2>Theses</h2>

{%- for y in page.years_theses %}
  <h2 class="year">{{y}}</h2>
  {% bibliography -f theses -q @*[year={{y}}]* %}
{% endfor %}