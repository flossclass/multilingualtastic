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
    print "Hmm, let me see. Is it a string or not? I'll answer with True or False:"
    return isinstance( an_object, basestring ) #Returns `True` or `False`
#Again, since Python is indentation-sensitive
#the function is done once indentation returns
#to the base position (i.e. in line with `def`)

not_a_string = 1539238
print "Is the not_a_string variable a string?"
print isAString( not_a_string ) #Print what is `return`ed from the isAString function

a_string = "Hey, I'm a string, aren't I?"
print "\nIs the a_string variable a string?"
print isAString( a_string )

#The `%s` means "stick a string here. The `s` part of it means "string"
#The string following this line with a `%` and the string we want to stick in.
print "The number of instances of capital 'I' in the string '%s' is: " % a_string
#`count` returns an integer, but does not print it. So, we print what it returns:
print a_string.count('I') 

#Use a `\` for multi-line print statements:
#This is a decimal integer, denoted by `d`. `d` is for "decimal":
number_of_I = a_string.count('I')
print   "The number of instances of capital "\
        "'I' in the string '%s' is %d, and I put this "\
        "all on one line!" % (a_string, number_of_I)

################################################################################
# STRINGS and DATA STRUCTURES
################################################################################

#this_is_an_array = ['first value', 'second value', 'third value']
#
##We count starting from zero in Computer Science:
##The plus sign "+" means "concatenate".
##GOOGLE: wiki concatenation
#puts "Arrays keep their values in order, starting from zero, from left to right:"
#puts "this is the first value of this_is_an_array: " + this_is_an_array[0]
#puts "this is the second value of this_is_an_array: " + this_is_an_array[1]
#puts "this is the third value of this_is_an_array: " + this_is_an_array[2]
#
##`each` is a function that can be performed on objects to loop through the
##values that they contain, one at a time.
##`element` is an alias for the value in the array that `each` is currently pointing to.
##The pipes "|" around `element` indicate that "this is what I want to call the alias"
##Let's print the value of the alias to the screen with the puts command
#this_is_an_array.each { |element| 
#  puts element
#}
#
#this_is_a_hash = {"key1" => "value1", "key3" => "value3", "key2" => "value2"}
#
#puts 'I put the hash keys in this order: "key1", "key3", "key2"'
#puts '...but they print in this order when I do an `each` on the hash:'
#
##Here the first alias variable `key` refers to the hash key, and `value` refers
##to the hash value of the key.
##
##The `#{}` notation allows us to print the alias variable `key` within a string.
##Without such notation, it would just literally print the word "key". We want the
##value of the variable--not its name:
#this_is_a_hash.each {|key,value|
#  puts "This is a hash key: #{key} " + "with a value of: " + this_is_a_hash[key]
#}
#
#puts "Hashes, unlike arrays, are not numerically-indexed. You retrieve values via"
#puts "string keys instead of retrieving by numeric indeces."
#
#print 'This is the value of this_is_a_hash[\'key1\']:'
#puts this_is_a_hash['key1']
#
#also_a_hash = {
#  'key1' => 'value1',
#  'key3' => 'value3',
#  'key2' => 'value2',
#}