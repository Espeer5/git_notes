# Structure of Shell Scripts
- Start with the shebang line telling the shell what interpreter to use to interpret the script
    - formatted #!PATH -> i.e #!/bin/bash
- Follow this with a blank line
- Next, the lines of commands for the shell to execute
- Finally, there is an exit line that exits with a code
    - i. e "exit 0"
- run a script by setting permissions using chmod, and then run the script by giving the path to the script to the shell
- Stylistic Components:
    - Commenting in bash scripts is done by typing "#" on a line and then typing the comment
        - Use these to include the following information at the top of the file:
        * "Author: ___"
        * "Date created: ___"
        * "Last Modified: ____"
    - Now, leave a blank line, and then add a description section
    - Then write a usage scetion to tell a user how to use the script