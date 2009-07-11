#!/usr/bin/env python
#DIRECTIONS: Please follow along in the debugger:
import urllib2
import sys
import re 

a_list = ['one', 'two', 'three'] #Mutable! Ordered!

a_list.append('four')

a_list.insert(0, 'zero')

#Google: "built-in functions" $your_language
another_list = list('123')

#STOP/THINK: Why is one line in brackets and the other in parens?

a_tuple = ('one', 'two', 'three') #Immutable! Ordered!
another_tuple = tuple('123') #Immutable! Ordered!

a_set = set('123') #Mutable! Unordered!
a_frozenset = frozenset('123') #Immutable! Unordered!

for item in a_list:
    print item
print "Done with list"

for item in a_set:
    print item
print "Done with set"

#Google: Mutability
a_list[0] = 'two' #This will NOT produce an error (lists are mutable)
print a_list[0]

#Example:
#a_tuple[0] = 'two' #This WILL produce an error (tuples are immutable)


#Info: In other languages a dictionary is like an "associative array" or a "hash":
a_dictionary = { 'three':3, 'some':'number', 'one':1} #Mutable! Unordered!
another_dictionary = dict(two=2, three=3, one=1)

yet_another_dictionary = dict(a_dictionary=a_dictionary, another_dictionary=another_dictionary)

################################################################################

#Debugger: Examine each object below closely, going step-by-step:
object_that_is_kind_of_like_a_file_handle = urllib2.urlopen('http://www.cnn.com')
#Print the HTTP code (i.e. in the 200s means success, in the 500s means failure)
print "This is the HTTP cod we got:\n"
print object_that_is_kind_of_like_a_file_handle.code

#LINK: http://en.wikibooks.org/wiki/Python_Programming/Input_and_output
print "Tell me which keyword to look for and hit enter.\n"
keyword = raw_input()

regular_expression = re.compile( ".+"+keyword+".+", re.IGNORECASE ) 

#This will print lines from CNN that have the word "Obama" in them:
for file_line in object_that_is_kind_of_like_a_file_handle:
    if re.match( regular_expression, file_line ):
        print file_line

