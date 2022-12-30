# Branching in Git
* Note - Master/main are the same the same thing, but on Github, it is called main
- Git commits each get a unique hash - they are stored in a linked list where each commit is back linked to its parent commit
- Git is meant to be used as a distributed tool over a large team so that everyone can work in the same codebase at the same time
- The two facts at the same time lead to the possibility and necessity of branching
- What is a branch?
    - A branch is like a new timeline for a project, where we have created a new version of the codebase that we can edit, but is not part of the main branch of the project - this is like a sandboax!
        * Once one branch has a feature that needs to be added to the main codebase, this means the changes in that branch need to be merged into other branches
        * Since we have a back-linked list, we can easily create this linked structure of branches - we simply have more than one commit which links to a certain node of the main branch
    - HEAD: This is the pointer to our current location in the repository - telling Git where the first node in our linked list is! This is the location we have checked out
    - Use git branch to show a list of all current branches of the repo
- Creating a branch:
    * git branch [branch-name] - creates but does not checkout a new branch with the given name
    * git switch - switches to a different branch
    * git push -u origin [branch] - publishes a new branch to Github
    - Git checkout - has a million different functions, but can be used for the same thing as switch
        * We can also create and automatically switch to a new branch using git switch -c [branch_name]
    - Changes to a branch are stored locally, andwill be deleted if not committed or stashed prior to switching to another branch
- Deleting a branch:
    * git branch -d or --delete
    - Not you cannot delete a branch which is currently checked out
- Renaming a branch:
    * First, checkout the branch
    * git branch -m [name]