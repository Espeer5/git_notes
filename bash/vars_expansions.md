# Variables and Shell Expansion
- Parameter:
    - Any entity that stores values
    - 3 types:
        * Variables: parameters whose valuable can be manually changed
        * Positional Parameters
        * Special Parameters
- Creating User-defined variables:
    - "name=value" (No spaces around operators)
        * Names are lower cased
    - ex:
        * subject="math"
        * echo "subject is ${subject}" will print subject is math
- Variable expansion:
    * "${variable_name}" -> expands this to be the value of the variable
- Shell Variables:
    - variables created by the shell
    - Also "environment variables"
    - Can be dereferenced by "$var"
    - Common vars:
        - PATH: stores the path to shell command binaries
        - HOME: the path to the home directory
        - USER: username of the current user
        - HOSTNAME: name of current computer
        - HOSTTYPE: type of computer
        - PS1: the command line prompt
- Parameter Expansion tricks:
    - ex: "name=DeAtH"
        * echo ${name,} -> deAtH
        * echo ${name,,} -> death
            - Same trick for uppercasing, just with ^ instead of ,
        * echo ${#name} -> 5
    - slicing:
        * ${parameter:offset:length} -> start at index offset, and supply length many chars
        * ex:
            * echo ${numbers: -3:2} -> two chars starting 3 chars from the end of the string
