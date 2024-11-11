REM Stop all running Docker containers
FOR /f "tokens=*" %%i IN ('docker ps -q') DO docker stop %%i

REM Serve Jekyll with bundler exec to resolve gem conflicts
docker run --rm -v "%cd%:/srv/jekyll" -p "8080:8080" -p "35729:35729" -it amirpourmand/al-folio:latest /bin/sh -c "bundle update && bundle exec jekyll serve --host 0.0.0.0 --port 8080 --watch --livereload --force_polling"

PAUSE