#!/usr/bin/perl -w

# THEME: Retrieving and processing input



package day3top; # <-- If I didn't specify anything this would be 'package main' by default

# CONCEPT: SCOPE
# "local" versus "lexical" versus "package" versus "global" variables

$package_variable = 'Hey, I\'m a package variable!';

use strict;

our $global_variable = 'Hey, I\'m a global variable!';

my $lexical_variable = 'Hey, I\'m a lexical variable!';

print_vars( $lexical_variable );

#A subroutine is a different scope than the lines of code above and below it
sub print_vars {
    my $this_is_a_copy_of_the_lexical_var_that_was_passed_as_input = shift;
    
    print "Printing \$global_variable : $global_variable \n\n";
    
    local ($global_variable);
    
    print "Let's try printing \$global_variable again "
          ."after it has been localized : $global_variable \n\n";
    
    #This won't work!:
    #print "Printing \$package_variable: $package_variable \n\n";
    
    print "Printing \$day3top::package_variable : $day3top::package_variable \n\n";
    
    print "Setting global variable equal to the lexical variable"
            ." \$this_is_a_copy_of_the_lexical_var_that_was_passed_as_input for this subroutine...\n\n";
    
    $global_variable = $this_is_a_copy_of_the_lexical_var_that_was_passed_as_input;
    
    print "\$global_variable is now equal to : $global_variable \n\n";
    
    print "Exiting subroutine....\n\n";
}

print "OK, we're out of the subroutine. \$global_variable is back to its original value of: $global_variable \n\n";

##################
package day3bottom;
use strict;

#EXERCISE 1 : INPUT FROM COMMAND LINE
#
#Google: ARGV $your_language
#Google: input from command line $your_language
#
# Write a simple script that does the following:
# 
#   Takes three arguments from the command line
#   and prints them out to the screen one-by-one,
#   line-by-line.
#
# For example:
# `perl "argument 1" "argument 2" "argument 3"`
#
# Side note: backticks `` mean "a command"--don't interpret them literally.
#

#EXERCISE 1.1
#
# Modify your code to store the arguments in a hash,
# (maybe after extracting them from the @ARGV array)
# then print them out.
# 
# (Remember that a "hash" is the same concept as a Python "dictionary"
# and a PHP "associative array")

#EXERCISE 2 : INPUT FROM FILE
#
# Create a file with 
# 
# Write a simple script that does the following:
# 
#   Takes three arguments from the command line
#   and prints them out to the screen one-by-one,
#   line-by-line.
#
# For example:
# `perl "argument 1" "argument 2" "argument 3"`
#
# Side note: backticks `` mean "a command"--don't interpret them literally.
#
# 

#EXERCISE 2.1 : OUTPUT TO FILE
#
# Modify your code from exercise 2 above to
# append argument 1 to the top of the file
# and arguments 2 and 3 to the bottom of the file
# and write back to disk (to the same filename).
