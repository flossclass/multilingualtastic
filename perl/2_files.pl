#!/usr/bin/perl -w
use strict;

#`<` means "read", `>` means "write", `>>` means "append"
#Just like in UNIX, you can read in a file to another program with `<`
#or you can redirect the output of one program to a file like this: `ps > out.txt`
#where `ps` is a program, and "out.txt" is the file created and written to.

#Open filehandle for reading, where FH is an alias for the filehandle that is created
#This is a relative path to the file. Google "relative path vs. absolute path"
#if you don't know what they are. A relative path is based on the current/present working
#directory (type `pwd` on the command line to find the Present Working Directory or PWD)
open FH, "<", "2_files/temp.txt";
while (<FH>){
    print $_;#In this context, $_ turns into an alias for a line in the file
    print "\n";
}
close FH;#You *need* to close the filehandle when you're done with it,
         #or if you want to change to another access method (i.e. reading vs writing).

#Usually the above while loop syntax is used, but this works, too:
open FH, "<", "2_files/temp.txt";
foreach my $line (<FH>){
    print $line;
    print "\n";
}
close FH;

open FH, ">", "2_files/temp.txt";
print FH "Overwrite the file with this string.\n";
close FH;

open FH, ">>", "2_files/temp.txt";
print FH "Append this string to the file.\n";
close FH;


