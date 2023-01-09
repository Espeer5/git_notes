# Bash Command Completion
- Quoting:
    - single quotes escape teh meaning of all special characters
    - double quotes allow the use of $ and \ with their special meaning
- Bash completes commands through the following 5 step process:
    1. Tokenisation
        * Breaks the prompt into tokens
            - Metacharacters:
                - |
                - &
                - ;
                - ()
                - <>
                - space, tab, newline
            - Words: tokens that do not contain an unquoted metacharacter
            - operators: tokens that do contain at least one unquoted metacharacter
                * Control operators - control how a command is carried out
                * redirection operators - tell the shell where to send data
    2. Command Identification
        - Simple commands: "command arg1 arg2 arg3 ..."
            * Terminated by a metacharacter
        - compound commands:
            * Programming constructs
            * Starts with a reserved word and terminated by reserved word
    3. Shell Expansions
        - Occur in stages:
            1. Brace expansion
            2. Parameter, arithmetic, command, and tilde expansion
            3. Word splitting
            4. Globbing (filename expansion)
        - Word splitting: splits the result of some uquoted expansions into words
            * performed on unquoted parameter, command, and arithmetic expansions
            * Governed by IFS (internal field separator) variable (space, tab, and newline by default)
                - Holds all of the legal separators to do word splitting on
                - Avoid this by wrapping in double quotes if we want one of the results of those expanbsions to be considered one word
        - Globbing: Performed on Globbing Patterns, which are words that contain unquoted Special Pattern Characters:
            * "*" - matches anything
            * "?" - matches exactly one character
            * "[" - Only matches one of the characters that you put inside it (one character only)
            - This is how you use wildcards in bash -> expand into multiple words
            - ex:
                - ls file[0-9].txt -> anything files called file_.txt where _is a number 0-9
    4. Quote Removal
        - 3 types of quotes:
            * backslash, single quotes, and double quotes
        - Shell removes all unquoted backslash chars, single quote chars, and double quote chars not produced by an expansion
    5. Redirections
        - Data streams:
            1. Stream 0 = stdin
            2. Stream 1 - stdout
            3. Stream 2 = stderr
        - < redirect 
        - ">" redirect output
        - 2> redirects stream 2
