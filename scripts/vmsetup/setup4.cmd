mkdir c:\git
mkdir c:\git\forks
mkdir c:\git\github
cd /d c:\git\github
git clone https://github.com/Microsoft/xbox-live-api.git

cd /d c:\git\forks
git clone https://github.com/jasonsandlin/xbox-live-api.git
cd xbox-live-api
git remote add up https://github.com/Microsoft/xbox-live-api.git
git submodule update --init --recursive

cd /d c:\git\forks
git clone https://github.com/jasonsandlin/xbox-live-api-csharp
cd xbox-live-api-csharp
git remote add up https://github.com/Microsoft/xbox-live-api-csharp
git submodule update --init --recursive

cd /d c:\git\forks
git clone https://github.com/jasonsandlin/xbox-live-unity-plugin.git xup
cd xup
git remote add up https://github.com/Microsoft/xbox-live-unity-plugin.git
git submodule update --init --recursive
