# Initialize git
git version                     # show git version)
git init                        # initialize empty git repo
git config --global user.name "alex Khassanov"
git config --global user.email "akhasanov@hotmail.com"
# Working Directory -> Staging Area
git add .                       # add files from working directory to the staging area
git status                      # current status fo the working directory
# Staging Area -> Git Repo
git commit -m "Commit message"  # add files from staging area to repo
git status
# Switch to previous / future commits
git log                         # shows commits from latest to the current
git checkout 210a22e9242645a07d844ced721006f5728d9be2 # switch to the specified commit
git log --all                   # show ALL commits
git checkout 7441d13c2842272b214bd41e95022d76a599c192  # switch to the specified commit
# Unstage the file
git checkout master
git add .
git status
git rm --cached FileA.txt
git status
# Create branch
git checkout -b FeatureA
git status
git log
git checkout master
# Merge branches
git checkout master
get merge FeatureA
# Using remote repo
git remote add origin https://github.com/akhassanov2023/az-400.git
git push -u origin master

# Show HEAD
cat .git/HEAD

# What is HEAD
A head is simply a reference to a commit object. Each head has a name (branch name or tag name, etc). 
By default, there is a head in every repository called master. 
A repository can contain any number of heads. 
At any given time, one head is selected as the “current head.” This head is aliased to HEAD, always in capitals.
Note this difference: a “head” (lowercase) refers to any one of the named heads in the repository;
“HEAD” (uppercase) refers exclusively to the currently active head. 
This distinction is used frequently in Git documentation.
Run [cat .git/HEAD]  to show where HEAD points to.
When HEAD points directly to a commit (660a038345cd1d1fa82f1393422db976424c81e2 ) , it is called a detached HEAD.
When HEAD points to branch reference (ref: refs/heads/master), it is called an attached HEAD.
If HEAD is pointing to the commit rather than the branch,
it is detached and a new commit will not be associated with a branch reference

# Detached HEAD exercise
git checkout master
git log --pretty=format:"%h:  %d" -1
# 05ee47b:   (HEAD -> master)

git checkout 05ee47b -q # (-q is for dramatic effect)
git log --pretty=format:"%h:  %d" -1   
# a3c485d:   (HEAD, master)
git status
cat .git/HEAD
git log -1

# HEAD and heads
$ cat .git/HEAD
ref: refs/heads/master
$ cat .git/refs/heads/master
35ede5c916f88d8ba5a9dd6afd69fcaf773f70ed

