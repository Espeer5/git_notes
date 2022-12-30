# Fetching and Pulling
- What are remote tracking branches?
    * When we clone a repo, we have two pointers:
        - Our local branch pointer ("main")
        - The remote tracking branch pointer ("origin/main")
    * We can view these by running "git branch -r" for remote
- Working with remote branches
    * If we want to connect a local branch to a different remote branch, we can checkout that branch
    * We can create a local branch matching the remote branch by just switching to the branch
        - i.e if there is a remote branch "origin/new_work", I can just "git switch new_work" and i will have a local branch tracking the right remote branch
- git fetch:
    - Imagine a repo on your remote has been changed since you last communicated with the remote
        * Basically gets the lastest information about the remote repo
    - git fetch simply pulls these commits down into your local repo, but doesn't add them to your workspace
        * git fetch [remote]
        * git fetch [remote] [branch]
    - Adds changes to the __remote tracking branch__
        * from here we can view the changes, choose whether to use them, track them, etc.
- git pull:
    - It is best practice to always pull before pushing!
    - "git pull [remote] [branch]"
    - pulls changes from the remote repo straight into your working directory
        * a fetch plus a merge, merging remote tracking branch into HEAD
    - If you have no changes since the last time you pulled, simply brings you up to date (fast-forwards)
    - Integrating these changes can cause merge conflicts
    - "git pull" will default to origin and our current branch on the remote (same name)
