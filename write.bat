@echo off
for /f "tokens=1* delims=" %%a in ('date /T') do set datestr=%%a
mkdir %datestr%
cd %datestr%
echo # %datestr% > README.md
code README.md
