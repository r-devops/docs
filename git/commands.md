### Install git on linux
```
# yum install git -y
```

#### Clone a repository
```
# git clone <repo - url>
```
#### Add a file to repository
```
# vi file1
  ## add the file to staging area
# git add file1
  ## put the file to local repository
# git commit -m 'mesage for future reference'
  ## push the repo to central repo
# git push origin master
```

#### creating a tag
```
# git tag v1.0
# git tag --list
```

#### create a branch and merge the code to master branch
```
# git branch branch1
# git checkout branch1
# vi file1
<modify some content>
# git add file1
# git commit -m file1
# git push origin branch1

# git checkout master
# git merge branch1
# git push origin master
```
