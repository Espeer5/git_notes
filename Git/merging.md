# Merging
- Merging is just incoporating changes from one branch into another branch
- git merge
    - We always merge to the current head, i.e git merge bugfix merges the bugfix branch into the branch pointed to by HEAD
- Types of merges:
    - Fast forward merge - simply catches the main branch up to where the working branch is, with main not having any additional changes that aren't in the working branch
    - Non fast-forward - Merging onto a branch that has been changed since we branched off from it
        * If there are not conflicts, Git can merge these for us automatically by creating a new commit to main, and asking us for a commit message
        * If there are conflicts, we will have to resolve them manually in order to commit
- Merge conflicts:
    - These arise when 2 branching have different versions of the same files and needs to know which version to use
    - Git will mark up these discrepancies for us. To fix, we go into the file, resolve the problem and remove the markups, and then add changes and commit
