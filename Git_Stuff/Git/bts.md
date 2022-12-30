# Git Behind the Scenes
- The local config file:
    * allows us to configure settings for a particular repo
    * "git config --local ...." updates the setting in the local repo
    * There are tons of options we can configure, look at the docs to see all the options
- The refs directory:
    * the refs folder contains all of the pointers used in our directory
        - this means that we have refs folders for heads, branches, tags, etc
- The HEAD file
    * simply contains a reference to a branch pointer (or a commit hash in detached head mode)
- The objects folder:
    * Contains compressed binary files storing all of the backups of all of the commits in the history of the repo
    - git hash-object [file] - gives us back the unique hash for the data object we passed in
        * ex "echo "hi" | git hash-object --stdin"
        * we can add the -w object to tell Git to actually store this object for us
            - Creates an entry in the objects folder of the Git repo
        * We can then retrieve this object using "git cat-file -p [object hash]
            * replace -p with -t to get the type of an object from its hash
            * note it is not necessary to include the entire hash
        * essentially like a database containing all the Git objects that Git has provided us with hashes to
        * this is exactly how the backend of Git works
    * 4 types of Git objects:
        - commits:
            * These combine a tree object with information aboutt he context that led to the current tree
                - reference to parent commit
                - author
                - commiter
                - commit message
            * These are the nodes in our Git linked tree
        - trees:
            * A tree is composed of pointers showing the relationships between files or other trees - basically the directory graph (the file tree)
            * these include file names and directory names
            * we can view trees using 'git cat-file -p master^{tree}'
        - blobs:
            * a blob is the object type that git uses to store the contents of a file - not the name or location, literally just the content
        - annotated tags:
            * Just like a commit, but this is a pointer to a particular commit along with some metadata
