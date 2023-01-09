# The System Path
- The system path is where th shell searches for commands
- If we add a script to the PATH, then we will be able to run the script as a command
- To add something to the sys path, go to ~
    - In the file .profile, at the bottom, write export PATH="$PATH:$HOME/__path__"
        * We can then use source ~/.profile to reload the profile folder in the shell
    - Complete this process with a directory, and any script im that directory will be runnable by name