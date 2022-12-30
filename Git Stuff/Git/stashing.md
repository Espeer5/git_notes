# Stashing
- Git stashing is used so that we can switch branches without either discarding or committing changes - simply saves our changes in place on a local version of the branch so that we can recover the changes
- How it works:
    * git stash takes all of the current local changes and saves them for later - can also use git stash save
    * changes are stashed to a stack, so when you use git stash pop, it is in LIFO order
- git stash apply: apply whatever is in the stash, but without removingit from the stash
- Note that popping or applying stashed changes can cause a conflict, and we resolve these just like a merge conflict
- git stash list - lists out all of the stashed changes in the stash stack
    - we can refer to certain items in the stash using stash@{#} i.e "git stash apply stash@{3}" to apply the third most recent stashed changes
- git stash drop - removes a certain stash from the stash by referencing stash ID (stash@{1})
- git stash clear - clears everything from the stash
