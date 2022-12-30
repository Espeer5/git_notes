# Reflogs
- What is a reflog?
    * The logs kept by Git containing a record of when refs were updated
    * Updated anytime we commit, push, merge, rebase, switch, checkout, etc.
- Limitations of reflogs:
    - Only store local changes
    - Expire after a certain length of time (90 days by default)
- git reflog command
    - git reflog show: pass a reference and we will get a log of changes for the passed reference
        * ex) git reflog show HEAD gives history of changes to HEAD
    - reflog references: name@qualifier - these allow us to specify specific items in the reflog
        * ex) git checkout HEAD@{2} would allow us to checkout exactly what HEAD was at the snapshot HEAD@{2} in the reflog
    - time based reflog references:
        * ex) HEAD@{one.week.ago}
        * ex) git diff main@{0} main@{yesterday}
        * Can use specific time references
- Why is this useful?
    * Let's say we overwrite all of our changes from some commits by doing a reset --hard
    * info from those commits cannot be found in the commit historym however, these commits are still in the reflog
        - this means we can still get all of that data back by checking out an entry in the reflog
- Undoing a rebase with reflog:
    * Any state prior to a rebase is stored in the reflogs, so we can check it out from the reflog, access all the changes, and then can easily reset back to it
