mkdir c:\git
mkdir c:\git\work\forks
mkdir c:\git\work\github
cd /d c:\git\work\github
git clone https://github.com/Microsoft/xbox-live-api.git

cd /d c:\git\work\forks
git clone https://github.com/jasonsandlin/xbox-live-api.git
cd xbox-live-api
git remote add up https://github.com/Microsoft/xbox-live-api.git
git submodule update --init --recursive

cd /d c:\git\work\forks
git clone https://github.com/jasonsandlin/xbox-live-api-csharp
cd xbox-live-api-csharp
git remote add up https://github.com/Microsoft/xbox-live-api-csharp
git submodule update --init --recursive

cd /d c:\git\work\forks
git clone https://github.com/jasonsandlin/xbox-live-unity-plugin.git xup
cd xup
git remote add up https://github.com/Microsoft/xbox-live-unity-plugin.git
git submodule update --init --recursive
