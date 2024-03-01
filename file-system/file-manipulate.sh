##########################
## Working with files and directory (touch, mkdir, cp, mv, rm, shred)
##########################
 
# creating a new file or updating the timestamps if the file already exists
touch filename
 
# creating a new directory
mkdir dir1
 
# creating a directory and its parents as well
mkdir -p mydir1/mydir2/mydir3
 
######################
### The cp command ###
######################
# copying file1 to file2 in the current directory
cp file1 file2
 
# copying file1 to dir1 as another name (file2)
cp file1 dir1/file2
 
# copying a file prompting the user if it overwrites the destination
cp -i file1 file2
 
# preserving the file permissions, group and ownership when copying
cp -p file1 file2
 
# being verbose
cp -v file1 file2
 
# recursively copying dir1 to dir2 in the current directory
cp -r dir1 dir2/
 
# copy more source files and directories to a destination directory
cp -r file1 file2 dir1 dir2 destination_directory/
 
 
######################
### The mv command ###
######################
# renaming file1 to file2
mv file1 file2
 
# moving file1 to dir1 
mv file1 dir1/
 
# moving a file prompting the user if it overwrites the destination file
mv -i file1 dir1/
 
# preventing a existing file from being overwritten
mv -n file1 dir1/
 
# moving only if the source file is newer than the destination file or when the destination file is missing
mv -u file1 dir1/
 
# moving file1 to dir1 as file2
mv file1 dir1/file2
 
# moving more source files and directories to a destination directory
mv file1 file2 dir1/ dir2/ destination_directory/
 
######################
### The rm command ###
######################
# removing a file
rm file1
 
# being verbose when removing a file
rm -v file1
 
# removing a directory
rm -r dir1/
 
# removing a directory without prompting
rm -rf dir1/
 
# removing a file and a directory prompting the user for confirmation
rm -ri fil1 dir1/
 
# secure removal of a file (verbose with 100 rounds of overwriting)
shred -vu -n 100 file1
