

git clone --bare https://lloyderino@bitbucket.org/rcg-demo-lloyd/repo1.git
cd repo1.git
git push --mirror https://github.com/llyderino/migration-repo1.git
cd ..
Remove-Item repo1.git -Recurse -Force -Confirm:$false
##
git clone --bare https://lloyderino@bitbucket.org/rcg-demo-lloyd/repo2.git
cd repo2.git
git push --mirror https://github.com/llyderino/migration-repo2.git
cd ..
Remove-Item repo2.git -Recurse -Force -Confirm:$false
##
git clone --bare https://lloyderino@bitbucket.org/rcg-demo-lloyd/repo3.git
cd repo3.git
git push --mirror https://github.com/llyderino/migration-repo3.git
cd ..
Remove-Item repo1.git -Recurse -Force -Confirm:$false  