@echo off
for /f "tokens=1* delims= " %%a in ('date /T') do set today_folder=%%a
mkdir %today_folder%

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

REM Time Generation
for /f "tokens=1* delims= " %%t in ('time /T') do set timestr=%%t
for /f "tokens=2* delims= " %%t in ('time /T') do set tt_str=%%t
for /f "tokens=3* delims=:" %%t in ('echo %TIME%') do set ss_ms_str=%%t
for /f "tokens=1* delims=." %%t in ('echo %ss_ms_str%') do set ss_str=%%t

set time_final=%timestr%:%ss_str% %tt_str%
REM Time End

echo # %datestr%, %time_final% >> %today_folder%\README.md
code %today_folder%\README.md
