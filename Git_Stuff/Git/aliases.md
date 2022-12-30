# Git Aliases
- git aliases are aliases for Git commands that can be setup from the glocal config file
- Simply a custom command corresponding to a set of git commands
- Creating an alias:
    * "[alias]" section of the config file
        - "s = status" creates a shortcut - typing "git s" will run git status!
    * Or, "git config --global alias.s status" does the same
- Aliases with arguments:
    - let's write an alias for git commit -m
        - "cm = commit -m" - we can then add any argument after cm that we need