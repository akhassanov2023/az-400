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
