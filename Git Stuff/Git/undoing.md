# Going Backwards - Reverting/Resetting/Restoring to a Previous Version
- We can use git checkout to check out old commits by checking out a commit hash
    * When we do so, we get a detached head message - this means we have detached head from being a branch pointer, and it now points to the commit that we checked out
    * Switch out of detached head mode by switching or checking out to a branch
    * We can also use this to create a new branch from the old commit
- We can also reference commits relative to HEAD
    * HEAD~2 = 2 commits before the one that HEAD is pointing to
- Discarding changes:
    * We can use git checkout to discard any local changes: "git checkout HEAD [file]"
    * We can also use "git restore [file]" to undo any changes relative to HEAD
        - Restore can also specify a source: "git restore --source [commit hash/relative to head]
        - If we do this, there is no way to recover our changes
- git restore:
    - Unstaging files:
        - To unstage a file that we have git added, we can use "git restore --staged [file]"
    - Restoring older version of file:
        * "git restore --source [hash/relative to HEAD] [file]" restores to the version of the file in the given commit
- git reset:
    - resets an entire repository back to a particular commit
    - "git reset [hash/relative to HEAD]"
        * This simply deletes the commits, but keeps changes in the working directory. We could then discard those changes with checkout
    - git reset --hard [commit]
        * deletes all the changes from the working directory as well
        * Note that this undoes changes for a branch, any other branches that had any of the undone commits will still have those commits
- git revert:
    - git revert [commit] creates a new commit that undoes the changes in the reverted commits
    - This differs from reset in that it DOES NOT delete any commits, just creates a new path in which they are undone.
    - This is needed when trying to undo history that other people already have on their machines