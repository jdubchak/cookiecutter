## establish interactive commands
echo "For project set up, please type '1' or '2' to proceed to next step when prompted. Do you wish to continue?"
select yn in "Yes" "No"; do 
	case $yn in 
		Yes) 
			echo "yes"; break;;  
		No) 
			echo "no"; break;; 
	esac
done 

## determine directory to contain project root 
echo "Is $PWD the directory you wish to contain your project?"
select yn in "Yes" "No"; do
	case $yn in
		Yes) 
			rootdir=$PWD 
			echo $rootdir
			break;;
		No) 
			echo "Please input path to directory you wish to contain your project"
			read rootdir
			echo $rootdir 
			cd $rootdir 
			break;;
	esac
done 

## create project directory and move into it 
echo "Please input the project name, without spaces"
read proj_name
mkdir $proj_name 
cd $proj_name

## get author's name 
echo "Please input your name"
read author_name

## create basic structure of project
mkdir data doc results src misc
touch CITATION.md
touch LICENSE.md
echo "$proj_name created by $author_name $(date +"%d/%m/%Y")" > README.md 

## tell user which directories and files have been created 
echo "The directories data, doc, results, src, and misc and the markdown files README, CITATION and LICENSE were created."

## create .gitkeep files in all empty directories 
for d in */;
do 
	touch $d/.gitkeep 
done 
## source for `for` loop https://stackoverflow.com/questions/4935764/creating-empty-file-in-all-subfolders
