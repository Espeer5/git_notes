# Committing in Detail
- When to commit:
    * It is a good idea to commit feature by feature - "atomic"
    * This way, if we want to roll back a certain feature, we can easily do so by reverting that particular commit
- Commit messages:
    - Use present tense, imperative style i.e "change ___ to version 2"
- Can configure default text editor in git config to be somethng other than the system setting if desired
- Amending
    * If we forget to add a file or make a commit message mistake, we can use Git commit --amend to go back to the last commit, and remake it with a change
- gitignore
    * We use gitignore to tell Git that some files should not be stored or tracked with Git in our local directory
    * Simply create a file named .gitignore and put the name of any files.folders that shouldn't be tracked
        - Use a "/" at the end of a name to show directory
