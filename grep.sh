##########################
## Searching for text patterns (grep)
##########################
 
grep [OPTIONS] pattern file
 
Options:
-n          # => print line number
-i          # => case insensitive
-v          # inverse the match
-w          # search for whole words
-a          # search in binary files
-R          # search in directory recursively
-c          # display only the no. of matches
-C n        # display a context (n lines before and after the match)
 
 
# printing ASCII chars from a binary file
strings binary_file
