#!/usr/bin/env python
a_string = 'This is a string. Wow!\n'
another_string = 'Whoa, this is another string!\n'

file_location = '2_files/temp.txt'

#You must open and close data streams (aka "file handles") to files:
#THINK: What is `output`?
#ANSWER: It is a "file object". It's not the file itself. It represents the file.
output = open( file_location , 'w' ) #`w` means "write mode"

output.write( a_string )
output.write( another_string )
#The filehandle will not close unless the parentheses are present on `close`:
output.close() 

print "This is what's in the file so far:"

input = open( file_location, 'r' ) #`r` means "read mode"
for file_line in input:
    print file_line
input.close()

