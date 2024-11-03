$hash = @{
    "https://lloyderino@bitbucket.org/rcg-demo-lloyd/repo1.git" = "https://github.com/llyderino/migration-repo1.git"
    "https://lloyderino@bitbucket.org/rcg-demo-lloyd/repo2.git" = "https://github.com/llyderino/migration-repo2.git"
    "https://lloyderino@bitbucket.org/rcg-demo-lloyd/repo3.git" = "https://github.com/llyderino/migration-repo3.git"
}

foreach ($h in $hash.Keys) {
    Write-Host "${h}: $($hash.$h)"
    git clone --bare ${h}
    $repoName = Split-Path ${h} -Leaf
    cd $repoName
    Write-Host "${repoName}"
    git push --mirror $($hash.$h)
    cd ..
    Remove-Item $repoName -Recurse -Force -Confirm:$false
}
# git clone --bare https://lloyderino@bitbucket.org/rcg-demo-lloyd/repo1.git
# cd repo1.git
# git push --mirror https://github.com/llyderino/migration-repo1.git
# cd ..
# Remove-Item repo1.git -Recurse -Force -Confirm:$false
