## Cookie cutter

This cookie cutter script creates the basic folder structure for a data science project. 

This script was created as a component of the UBC Master of Data Science program Workflows (DSCI 522) course and inspired by an outline by [Reproducible Science Cirriculum](https://github.com/Reproducible-Science-Curriculum/rr-init). 

## Structure

The cookie cutter folder structure is outlined below.
```
project root
|
|-- data/   ## raw data folder 
|
|-- doc/   ## all project text files 
|
|-- results/   ## all tidy data sets and results (figures and tables)
|
|-- src/   ## project source code 
|
|-- misc/   ## this folder is intended for additional files related to the project, including correspondence with coworkers 
|
|-- CITATION 
|
|-- LICENSE 
|
|-- README  
```

Note: All directories (excluding the project root) contain a `.gitkeep` file when project structure is created. 


## Installation 

To use this script, clone the cookie cutter repo. 

## Use

This bash script can create your project within any existing folder on your local machine. User input is required at time of execution. Simply execute the following command on your command line and follow the prompts:

`$ sh cookie_cutter.sh` 

Note: If your current directory is not the intended project root directory, the absolute path you wish to store your project must be specified when prompted. An example is shown below.

`~/Documents/DataProjects` 
