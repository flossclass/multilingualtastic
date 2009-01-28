#!/usr/bin/env python

################################################################################
# STRING BASICS
################################################################################

string = "This is a string, to the left is the variable that holds it"

#In Ruby, variables also act as objects. To keep it simple, this means you can
#call methods on these variables (as objects) using a "dot" operator.
#"dot" means "do"
print string #Print the string

#GOOGLE: wiki escape character
#Prints a new line:
print "\n" 
print '\n' 

array_of_chars_in_string = list(string)

for char in array_of_chars_in_string:
    print char
#The loop is done when indentation returns to the beginning of the loop
print 'Indentation is back to normal and the loop is done!'

print "Let's try to print the char alias variable outside of the loop:"
print char
print "That's the last char of the array!\n"

#To check whether something is a string, use the built-in functions
#`isinstance` and `basestring`, as follows:

#This is a "function" in python. In other languages it's called a "method"
#or a "subroutine." Its parameter is defined with an alias called `an_object`.
#Whatever input is fed into the function will be aliased to the `an_object`
#alias variable:
def isAString( an_object ):
    print "Hmm, let me see. Is it a string or not? Ummm..."
    return isinstance( an_object, basestring ) #Returns `True` or `False`
#Again, since Python is indentation-sensitive
#the function is done once indentation returns
#to the base position (i.e. in line with `def`)

not_a_string = 1539238
print "Is the not_a_string variable a string?"
print isAString( not_a_string ) #Print what is `return`ed from the isAString function

a_string = "Hey, I'm a string!"
print "Is the a_string variable a string?"
print isAString( a_string )


