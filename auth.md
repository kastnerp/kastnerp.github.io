# auth.md: patrickkastner.me

**Audience:** AI agents and automated clients.

**No authentication.** This is a public website (Patrick Kastner's personal site): research, publications, people and news. It needs no account, key or
token, and it has no API of its own. There is no registration or provisioning endpoint and no OAuth server, so there is no
protected-resource or authorization-server metadata to publish.

## How to use it

- Send plain `GET` requests. Honour [`/robots.txt`](https://patrickkastner.me/robots.txt) and its content signals, and identify yourself
  with a descriptive `User-Agent`. The sitemap is [`/sitemap.xml`](https://patrickkastner.me/sitemap.xml).
- The one public data API connected to this work, the AIJ wind-benchmark data, is at <https://aij.eddy3d.com/api/> and needs no
  credentials either; it is listed in [`/.well-known/api-catalog`](https://patrickkastner.me/.well-known/api-catalog).

## Contact

<https://patrickkastner.me/>
