## Execute Java Test 

This is a mini template for NUS students who needs to run their test against some input files and check the difference against some output file 

##### Folders and Naming

##### Project 

The java file should have the first character Capitalised and in the same directory as `test-task.sh`

> `Addition.java`

##### Input 

Input files are stored in `input/` folder 
files in it should have the same name as the project 
all **lower case** 
with extension `.in`

> `input/addition1.in`

##### Output

Expected output files are stored in `output/` folder 
files in it should have the same name as the project 
all **lower case** 
with extension `.out`

> `output/addition1.out`

##### Using it 

simply execute 

> sh test-task.sh <Project Name> <Test Number(Optional)>

i.e. `sh test-task.sh Addition 1` 