@echo off
setlocal enabledelayedexpansion

set YYYYmmdd=%date:~0,4%%date:~5,2%%date:~8,2%
set hhmiss=%time:~0,2%%time:~3,2%%time:~6,2%%time:~9,2%
:: Test result file name
set TESTRESULT=testresult_%YYYYmmdd%_%hhmiss%.txt

for /l %%i in (1,1,10000) do (
set n=%%i
echo ##!n!## >> %TESTRESULT%
::Download
curl -O -k -u test:test sftp://127.0.0.1/DOWNLOAD.md
echo DL---------------- %errorlevel% >> %TESTRESULT%
:: Upload
curl -k -u test:test -T UPLOAD.md sftp://127.0.0.1/UPLOAD.md
echo UP---------------- %errorlevel% >> %TESTRESULT%
)
pause
