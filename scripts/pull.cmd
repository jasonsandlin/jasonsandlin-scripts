if %3 EQU "" goto help
git checkout master
if ERRORLEVEL 1 goto done
git checkout -b %2
if ERRORLEVEL 1 goto done
git merge --squash %1
if ERRORLEVEL 1 goto done
git commit -m %3
if ERRORLEVEL 1 goto done
git push --set-upstream origin %2
goto done
:help
echo pull from_branch to_branch "desc"
:done