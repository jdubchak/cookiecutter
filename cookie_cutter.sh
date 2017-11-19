## establish interactive commands
echo "For project set up, please type 'yes' or 'no' to proceed to next step when prompted. Do you wish to continue?"
read ans 
IF [/I] $ans == "no" ^C echo "closing"

## check directory 
echo "Is $PWD the directory you wish to contain your project?"
