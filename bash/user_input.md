# User Input
- Positional Parameters:
    - Assigned to every argument given in the command line
    - Refer to them with "$1", "$2", etc. (one-indexed)
        * Note -> This means you can't use numerical variables as user-defined variables
    - If we go into double digit parameters, use "${10}"
- Special Parameters:
    - Parameters that bash gives a special meaning, that __cannot__ be changed
    - $# = number of parameters providede to the command
    - $0 = expands to the name of the running process - either the name of the shell running or the name of the script running
    - $@ = $1 $2 $3 ...
    - "$@" = "$1" "$2" "$3"... (avoid word splitting)
    - $* -> $1 $2 $3
    - "$*" = $1${IFS}$2${IFS}... -> $1,$2,$3,...
