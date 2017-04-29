set SRC=C:\git\github\forks\xsapi-garretw\
set PKG=Microsoft.Xbox.Live.SDK.Cpp.UWP.2017.03.20170227.001

rmdir /s /q C:\git\forks\xbox-live-samples\External\Packages\%PKG%\build\native\include\xsapi
robocopy /NJS /NJH /MT:16 /S /NP %SRC%\Include\xsapi C:\git\forks\xbox-live-samples\External\Packages\%PKG%\build\native\include\xsapi

copy %SRC%\Binaries\Debug\x64\Microsoft.Xbox.Services.140.UWP.Cpp\Microsoft.Xbox.Services.140.UWP.Cpp.lib C:\git\forks\xbox-live-samples\External\Packages\%PKG%\build\native\lib\x64\v140\Debug\Microsoft.Xbox.Services.140.UWP.Ship.Cpp.lib
copy %SRC%\Binaries\Debug\x64\Microsoft.Xbox.Services.140.UWP.Cpp\Microsoft.Xbox.Services.140.UWP.Cpp.pdb C:\git\forks\xbox-live-samples\External\Packages\%PKG%\build\native\lib\x64\v140\Debug\Microsoft.Xbox.Services.140.UWP.Ship.Cpp.pdb
