#!/usr/bin/perl -w
use strict;

#1.) Store a string of your chosing in a scalar variable.


#2.) Do the following UNIX command on the flossclass.com server in your home directory that you created
#   (not /home/exco -- the one you created)
#   
#   `curl http://www.nytimes.com/`
#
#   (When I use backticks around something, like I did above, you don't need to type the backticks -- they just
#   mean that it's a command to execute on the UNIX command line.)
#   
#   This command should download the index page from nytimes.com and print its contents to the screen.
#
#   Now, add `> index.html` to the curl command above to reroute its output to a file.
#
#   Type `cat index.html` to print the contents of this file the screen.


#3.) Now, store the results of this command in a perl variable, here, in this file. Google "perl backticks".
#    Discard the status output of the curl command by adding `2> /dev/null` to your command.
#    In more technical terms, you are redirecting "Standard error", abbreviated "stderr", to a "nulL" or "trash" folder
#    via the `2>` syntax, and letting "Standard output", abbreviated "stdout", pass through to the Perl variable.
#    See http://en.wikipedia.org/wiki/Standard_streams on the differences between "stderr" and "stdout"
#    for more information.

#4.) Print the contents of the above variable into a file called "output.txt".

#5.) Use the following code to search for a pattern or word in this file, and print out the line the word
#    occurs in when it is found. You will likely get some HTML output as well, which is OK:
open FH, "<", "output.txt" or die "Could not find the file 'output.txt'";
my $counter = 0;
while (<FH>){
    
    # The "$_" character below is an "alias" or "pointer" to the current line in the file.
    # When you "iterate" over or loop through a file handle using the `while` syntax above,
    #the file handle reads from the top of the file to the bottom of the file, line-by-line,
    #until the end of the file is reached.
    
    print $_;#Take this line out once you figure out what this script does. This will just print the current line to the screen.
    
    #This prints the first 40 lines of the file and stops executing this script.
    #Take this out once you figure out what this script is doing:
    exit if $counter == 40;
    
    if ($_ =~ /Obama/){
        print $_;#This prints the line in the file with a matching word "Obama".
    }
    
    $counter++;#This increments the $counter variable by one (the `++` syntax means "add one")
}
close FH;