if "%2" EQU "" goto help

cd /d c:\git\forks\xbox-live-samples\Samples\ID@XboxSDK
call :treeProcess %1 %2
cd /d c:\git\forks\xbox-live-samples\Samples\CreatorsSDK
call :treeProcess %1 %2

goto :eof

:treeProcess
for /f %%A IN ('dir /b *.vcxproj') do FindAndReplace.exe %%~fA "%1" "%2"
for /f %%A IN ('dir /b *.config') do FindAndReplace.exe %%~fA "%1" "%2"

for /D %%d in (*) do (
    cd %%d
    call :treeProcess %1 %2
    cd ..
)

goto done
:help
echo SwitchNugetVer  2017.03.20170228.001 2017.04.20170331.003
:done