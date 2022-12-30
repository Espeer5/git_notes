# Rebasing
- What is git rebase
    * Rebasing is a powerful alternative to merging, but you need to know when to not use it
    * Rebasing is used as either an alternative to merging or as a method of cleaning up
    * Rebasing vs. Merging:
        - Let's say the main branch has had some changes since we created our branch, and we need to update our local version. We also have local changes in our working directory
            * If we have to continually merge many times from the main, we have a very muddled, unclear feature history for our feature
        - Rebasing, unlike merging, rewrites the history of our feature - it creates new commits for each of the original feature branch commits (integrates the full commit history of the feature branch onto the main branch)
            * Essentially moves the entire feature branch onto the tip of the main branch
- Dealing with rebase conflicts
    * If a rebase creates a conflict, we have to resolve the conflict by going into the files and manually editing just like a merge conflict
    * Instructions will be given that tell you what to do as you go in the output
- interactive Rebasing
    * Rewrites our repo history using rebasing
    * "git rebase -i HEAD~#" (go back # of commits)
    
