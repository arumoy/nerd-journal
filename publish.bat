@echo off
REM Date generation start

for /f "tokens=1* delims=-" %%d in ('date /T') do set dd_str=%%d
for /f "tokens=2* delims=-" %%d in ('date /T') do set MM_str=%%d
for /f "tokens=3* delims=- " %%d in ('date /T') do set yyyy_str=%%d

if "%MM_str%"=="01" set MM_str=January
if "%MM_str%"=="02" set MM_str=February
if "%MM_str%"=="03" set MM_str=March
if "%MM_str%"=="04" set MM_str=April
if "%MM_str%"=="05" set MM_str=May
if "%MM_str%"=="06" set MM_str=June
if "%MM_str%"=="07" set MM_str=July
if "%MM_str%"=="08" set MM_str=August
if "%MM_str%"=="09" set MM_str=September
if "%MM_str%"=="10" set MM_str=October
if "%MM_str%"=="11" set MM_str=November
if "%MM_str%"=="12" set MM_str=December

set datestr=%dd_str% %MM_str% %yyyy_str%
REM date end

git add publish.bat
git commit -m "Journal entry for %datestr%"
git push -u origin master