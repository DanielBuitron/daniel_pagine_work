@echo off
cd /d "%~dp0"
echo Iniciando servidor local en http://localhost:8080 ...
where python >nul 2>nul && (start "" http://localhost:8080 & python -m http.server 8080 & goto :eof)
where py >nul 2>nul && (start "" http://localhost:8080 & py -m http.server 8080 & goto :eof)
where node >nul 2>nul && (start "" http://localhost:8080 & npx --yes http-server -p 8080 & goto :eof)
echo No se encontro Python ni Node. Abriendo index.html directamente...
start "" index.html
