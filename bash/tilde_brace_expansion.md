# Tilde and Brace Expansion
- "~" is expanded as the home directory of the current user
    - Also can be navigated to the home directory of any other user
        * "echo ~root"
    - "~+" is the $PWD var
    - "~-" is the $OLDPWD var
- Brace Exapnsion:
    - Generates sequences of text following a certain format
    - "echo {1,2,3}" -> 1 2 3 (Cannot include spaces)
    - "echo {1..3}" -> 1 2 3 (range list)
    - "echo {1..120..3} -> 1 4 7
        * Can add leading zeros to the first element to get the same number of digits in all entries
    - ex:
        - touch month{01..12}/day{01..31}.txt