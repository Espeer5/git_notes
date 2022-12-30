# Git Tags
- What are Git tags?
    * pointers referring to specific points in time in the Git history
    * Generally used to mark release history
    * These are shown in our git log
    * two types:
        1. lightweight - simply a named label
        2. annotated - contains additional metadata
- How to view Tags
    * 'git tag' with no additional options
    * We can also use wildcards to search, i.e "git tag -l '*beta'
- We can checkout a tag by simply checking out the tag name
    * note that this is the same as checking out a commit and hence puts us in detached head mode
- We can also check out the differences between tags using "git diff [tag1] [tag2]"
- Creating lightweight tags:
    * "git tag [tagname]" creates tag at current HEAD
- Creating annotated tag:
    * "git tag -a [tagname]"
    * This will call up the text editor to allow you to add more information to your tag
    * We could also use -m just like writing a commit message
- View tag data:
    * git show [tag]
- tag a previous commit:
    * "git tag [tag_name] [commit]
- If we try to reuse a tag that already exists, Git will warn us. If we really want to do it (this will __replace__ the old tag!) we can use -f for force
- Deleting a tag:
    * git tag -d [tag_name]
- Pushing tags:
    * when you push, tags are ignored by default
    * in order to push tags, we need to do "git push --tags", or "git push [tag_name]"
