# Setting up a repo on Github and Pushing
- If we already have a local Git repo, then we need to connect a remote to a new repo on Github
    * First, create an empty repo on Github
    * Git remotes:
        - This is a destination where a hosted repo lives
        - to view existing remotes, use "git remote -v"
        - To add a remote, use "git remote add [name] [link]"
            * It is common to name our remote "origin"
            * git remote rename [old] [new]
            * git remote remove [remote]
    * Now, we can push up our changes to the remote - git push [remote] [branch]
        - will default to if we have only 1 remote
        - git push [remote] [local_branch]:[remote_branch] pushes local branch to a different branch on our remote
    * git push -u -> "upstream"
        - upstream of a branch is the pointer from our local branch to a branch on our remote
        - relates a local branch to a remote branch so that we don't need to specify our destination each time
        - ex) "git push -u origin main"
- If we don't already have a repo, we want to create a new one on Github and clone it down
    * Simply create the repo, clone the repo to your machine at the destination you want, an now the remote is set up for you and ready to go
