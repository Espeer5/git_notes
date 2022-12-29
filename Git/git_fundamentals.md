# Git Fundamentals
(Reference available at git-scm.com)
1. What is Git?
    - Git is a version control software, meaning that it is able to track changes made across different versions of any types of documents by any users
    - Git, created by the creator of Linux, is the most commonly used VCS tool, dominating all athers on the market
    - It is a free and open source tool, that can be combined with other tools like Github or Gitlab to allow enterprise level collaboration on codebases
2. Conceptual Overview:
    - What is a repo?
        * a wokspace which tracks and manages the contents of a folder
        * Atomic unit - Git repors are not connected to each other
    - What does Git track?
        * A folder, plus everything nested within that folder recursively
        * This means we should not initialize a repo from a subdirectory of a repo
3. Basic Commands:
    - git status: Gives information on the current repo
    - git init: Initializes a git repo at the current path, creating hidden .git folder containing:
        * HEAD, config, description, hooks, index, info, logs, objects, packed-refs, refs
4. Committing:
    - essentially a checkpoint or saved version of your repo along its edit history
    - contains a message describing changes in current version
    - groups all changes made from previous version into a single version change
    - commands:
        1. git add: stages a particular edited file for commitment
        2. git commit: Move added changes from staging area to the repo, including commit message
            * -m -> use the following commit message
            * -a -> commits all current changes
5. Vocab:
    - Working Directory: local version of the repo, potentially having unsaved changes
    - Staging area: Changes that are prepared to be committed from the working directory to the repo
    - Repository: Where all the previous data without working directory changes is stored