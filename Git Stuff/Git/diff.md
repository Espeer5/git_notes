# Git Diff
- This command shows the changes between different versions of the repo
- Markers:
    * -: previous version of the file
    * +: Cuurent version of the file
    * @@ -3, 4 +3, 5 @@ = "4 lines from the old file starting at line 3, 5 lines from the new file starting at line 5"
- Important options:
    * git diff - shows the changes in the current working directory that are NOT staged
    * git diff HEAD - shows all changes in the working directory since the last commit (including staged changes)
    * git diff --staged or --cached: Only shows staged changes
    * git diff [filename]: differences for s specific file
    * git diff branch1..branch2 will show the changes between branches
    * git diff commit1..commit2 shows changes between two commits