REM Delete all running containers
FOR /f "tokens=*" %%i IN ('docker ps -q') DO docker stop %%i
REM Serve jekyll in directory
docker run --rm -v "%cd%:/srv/jekyll/" -p "8080:8080"  -it amirpourmand/al-folio:latest bundler install jekyll serve --watch --force_polling --port=8080 --host=0.0.0.0 
PAUSE
