#!/usr/bin/perl -w
use strict;

# We are going to recreate the functionality of 2.pl but with Perl modules this time.
# A module is just a package of functionality. An abstract, reusable tool to do useful things
# without having to rewrite the tool each time you want to use it. Wheel reinvention is almost
# always bad (don't reinvent the wheel -- especially if it's of good quality or just needs
# slight modifications).

use LWP::UserAgent; #This loads the LWP::UserAgent module, which does the same thing as the`wget` and `curl` unix commands.


#1.) Start typing "use " in Komodo and look at all of the modules you can use!
#    (Make sure to hit the space bar after "use")


#1.1) Go to the following site called "CPAN" (the central Perl module site) and search for "LWP::UserAgent":
#    http://search.cpan.org/
#
#    Click on the first link you see (the one with LWP::UserAgent) and read the SNYPOSIS and DESCRIPTION.
#
#    This will give you a description of all the things that this module can do, and how to use it.


#1.2) Read the first 3 paragraphs from this link:
#     http://en.wikipedia.org/wiki/User_agent


#2.) From the LWP::UserAgent CPAN page that you pulled up in step 1.1, look at the SYNOPSIS part of the page.
#    Get the contents of http://www.nytimes.com and store it in a scalar variable.
#    Note that the $response variable contains an "object", which is a complex variable representing the
#    response that the UserAgent received when it "browsed" to www.nytimes.com. If you try to print it,
#    it will look like a bunch of numbers and characters that just describe the object's memory address.
#    You can't actually print an object. You can only print strings (which include numbers).
#    To actually get the content from the response object,
#    you have to call the decoded_content method (as in the SNYPOSIS example).
#

#4.) Print the contents of the response content variable into a file called "output.txt".
#   Remember you'll have to open a filehandle for writing, and then print to it, and then close it.

#5.) Use the following code to search for a pattern or word in this output.txt file,
#   and print out the entire line containing the word you're searching for.
#   There may be more than one line printed, of course.
#   You will likely get some HTML output as well, which is OK:
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

#6.) If you're really feeling adventurous, try swapping out the LWP::UserAgent module for
#   the LWP::Simple module and notice the differences.

#7.) If you're even more adventurous, try browsing http://search.cpan.org and
#   see what you can do with different kinds of modules.
