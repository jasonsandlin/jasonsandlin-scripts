git config -f .gitmodules submodule.External/xbox-live-api-csharp.url https://github.com/jasonsandlin/xbox-live-api-csharp.git
git submodule sync
git submodule update --init --recursive

