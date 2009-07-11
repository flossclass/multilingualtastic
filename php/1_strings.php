<?php
################################################################################
# STRING BASICS
################################################################################

$string = "This is a string, to the left is the variable that holds it";

#GOOGLE: wiki escape character
print "\n"; #Prints a new line 

print '\n'; #Literally prints a backslash "\" and the letter n. Why? Single quotes!

#GOOGLE: concatenation
#Concatenation is done via a period or "dot" in PHP:
print "\n" . 'It\'s tricky to use a single quote within single quotes.' . "\n";

print "\n"; #Prints a new line

#Notice that backslash "\" escapes an backslash in double quotes,
#so that it prints a literal backslash, instead of interpreting "\n" as a new line:
print "What do you think this will print?: \\n";

print "\nBelow we have a heredoc:\n";

print <<< HERE
This is called a heredoc.
    It's nice for writing freely...
        ...on multiple lines...
and having everything printed as you type it, including the indentation.
It's also great for printing literal blocks of HTML:
<html>
<body>
This is the body as it will be seen in a browser.
</body>
</html>
Let's print our original \$string variable here:
$string
Note what the backslashes did
HERE;

print "Let's take our \$string and print it as uppercase:\n";
print strtoupper($string)."\n";

################################################################################
# NUMBERS
################################################################################
print 5 + 5;
print "\n";
print "5" + "5";#PHP can figure out that you are not trying to add strings.

################################################################################
# STRINGS and DATA STRUCTURES
################################################################################

$this_is_an_array = array('first value', 'second value', 'third value');

#We count starting from zero in Computer Science:
#The plus sign "+" means "concatenate".
#GOOGLE: wiki concatenation
print "Arrays keep their values in order, starting from zero, from left to right:\n";
print "this is the first value of this_is_an_array: " . $this_is_an_array[0] . "\n";
print "this is the second value of this_is_an_array: " . $this_is_an_array[1] . "\n";
print "this is the third value of this_is_an_array: " . $this_is_an_array[2] . "\n";
print "We access array 'elements' by an 'index' number\n";

#Called a "hash table" or just "hash" in other languages.
#In PHP it's called an "associative array":
$this_is_an_associative_array = array(
    "key1" => "value1",
    "key3" => "value3",
    "key2" => "value2",
);

print "Associative arrays are unordered, and we access their values via strings "
     ."rather than numbers:\n";

print 'key1: ' . $this_is_an_associative_array['key1'] . "\n";
print 'key2: ' . $this_is_an_associative_array['key2'] . "\n";
print 'key3: ' . $this_is_an_associative_array['key3'] . "\n";

?>