#!/usr/bin/perl -w
use strict;

#Subroutines: They do stuff, and return a value once evaluated

sub this_does_something {
    return "This is a value that the subroutine returns";
}


#To the right of the equals sign is also something that does something, and returns a value when evaluted.
#When the computer evaluates "1 + 2" it returns "3". You can think of this as an equation, a function, a series of steps to compute
#that result in a value:
my $value_of_whatever_the_stuff_to_the_right_returns = 1 + 2;

#Try printing this to make sure that the variable on the left equals "2"
print "\$value_of_whatever_the_stuff_to_the_right_returns = $value_of_whatever_the_stuff_to_the_right_returns\n";

#A subroutine is just a series of steps that get evaluated and return a value.
#So, let's make a subroutine that returns the same thing as the "1 + 2" equation above:

sub this_returns_1_plus_2 {
    return 1 + 2
}

#We "call" a subroutine by typing its name (i.e. "this_returns_1_plus_2" ) and adding parentheses to the end of it
#so that we can pass it arguments if we want (arguments to subroutines are put in parentheses).

#This is a call to the subroutine we wrote above:
this_returns_1_plus_2(); #It doesn't print anything, it just returns "3", which we never see, because we never print it.

#Once the subroutine is evaluated (just like the "1 + 2" equation is evaluated above), the return value is resolved to take its place
my $return_value = this_returns_1_plus_2();

#Try printing this to make sure it equals 3:

print "\$return_value : $return_value\n";

#Let's create a new subroutine and pass an argument to it this time:
sub this_adds_two_numbers {
    my ($argument1, $argument2) = @_;#This @_ variable is a special variable that you can use to access the parameters passed to the function
    return $argument1 + $argument2
}

#We don't need to say "my" before the $return_value variable b/c it was already declared above (around line 33)
$return_value = this_adds_two_numbers(1, 2);#We pass parameters in a "list", which is akin to an "array"

#Let's print this out to be sure it returns 3:
print "\$return_value : $return_value\n";

#Remember what an array is? Just an ordered list of values:
my @array = (1, 2, 3);

# 1.) Create a subroutine that adds three numbers. Then, create an array of three numbers.
#     Then, pass the array to your new subroutine like so: your_new_subroutine(@your_array)
#     and print out the return value of the subroutine




# This is a foreach loop. Foreach loops "loop" through or "iterate" through arrays.
# Remember that array elements are *ordered*, i.e. they are in order.
# Run the following code for this to make sense:

my $counter = 0;
foreach my $number (@array){
    print "This is element number $counter: $number";
    $counter++;#This increments the counter variable by one
}

# 2.) Create a subroutine that adds as many numbers as you pass it.
# If you passed it 50 numbers, it would add 50 numbers. If you passed it 3 numbers it would add 3 numbers.
# Hint: you'll have to use a foreach loop to do this.


# 3.) Copy-paste the above subroutine and make it only add numbers that are less than or equal to 5.

# Here's a code hint:

my $total = 0;
foreach my $number (@array){
    if ($number <= 5){# This is an "if" statement, wherein code is executed only if the condition evaluates to "true"
        #Do something with $total
        
        #Hint: The following syntax adds the value on the right to the value on the left
        #      without clobbering the value on the left (like using the "+" button on a calculator)
        #"$total += 10" 
    }
}

# 4.) Use Net::Twitter to create a simple Perl script that updates your Twitter status.
#     It should take as input (1) your username (2) your password (3) your status

#INFO on how to do this:
#@ARGV is a special array that accesses arguments passed through the command line to the perl script.

# If you did not change the name of this script ("4.pl"), and you ran the following command,
#       perl 4.pl "my_username" "my_password" "my status is this string of text"
# you could access what you typed like so: (note that you *do* need the quotes around the three different strings of text)

my $username = shift @ARGV;#The "shift" command takes the *first* element off of the array and returns it
my $password = shift @ARGV;
my $status = "@ARGV";#Convert the rest of @ARGV into a string

#To use the Net::Twitter module, you'd put "use Net::Twitter;" at the top of this script.
#Read the documentation here for usage examples: http://search.cpan.org/~mmims/Net-Twitter-3.04006/lib/Net/Twitter.pod
#I have installed the most recent version of Net::Twitter on the server.

