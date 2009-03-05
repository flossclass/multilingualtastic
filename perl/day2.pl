#!/usr/bin/perl -w

#This is the "main" package by default, without having to specify `package main;`
use strict;

my @array = ('thing', 1, 2,);

push @array, "This is on the end";
unshift @array, "This is on the front";

print "$_\n" for @array;

print "BREAK!\n";
my $last_element = pop @array;
my $first_element = shift @array;
print "$_\n" for @array;

if ('thing' eq 'thang'){
    my $thing = 'thing'
}


#This is an array reference:
my $array = \@array;

my %colors_hash = (
    apple => 'red',
    orange => 'orange-colored',
    keys_can_only_refer_to_a_single_value => $array,
);

#DIRECTIONS: Please follow along in the debugger and DO NOT expect to understand everything
package Day2;
use Moose;
has slogan => (is => 'ro', default => sub{'The debugger is fun!'});
has keyword => (
    is => 'rw',
    isa => 'Str',  #Str = String
    required => 1
);


###### In Perl, using Moose, you can have many packages/classes defined in a single file
package Day2::this_is_the_core_code;
use Moose;
extends 'Day2';#Pretty much what it says: this code extends / inherits from / is the child of the Day2 package/class

use LWP::UserAgent;

# "@"+variable means "array-context" in Perl:
my @simple_array = (2, 3, 4);

push @simple_array, (5, 6, 7);

unshift @simple_array, (0, 1);

my @multidimensional_array = (1, 2, [3, 4]);

my @anonymous_multidimensional_array = [1, 2, [3, 4]];

# "%"+variable means "hash-context" in Perl:
my %hash = ( key1 => 'value1', key2 => [@multidimensional_array] );

my %another_hash = ('key3' => 3);
# Here we are assigning to %another_hash in array context:

#var_name      #keys             #values
@another_hash{ @simple_array } = ('zero', 'one', 'two', 'three', 'four',
                                  'five', 'six', 'seven');

my $day2 = Day2->new( keyword => 'Palin' );#Create a new day2 object

#$day_2->slogan('The debugger is NOT fun!');#Error!

print "Today's slogan is..." ."'". $day2->slogan ."'". "\n";

$day2->cruise_the_internet('I am cool');

sub cruise_the_internet {
    my ($self, $first_argument) = @_;
    
    my $var = 'This takes up space!!!!!';
    
    die "You have to be cool in order to cruise the internet"
        unless $first_argument eq 'I am cool';
    
    print "Let's surf the net, dude... but, wait.. oh, what was our slogan again?\n";
    print "Oh yeah, it was \"" . $self->slogan . "\"\n";
    
    #Debugger: Examine each object below closely, using a trial of Komodo IDE (not Edit)
    #going step-by-step:
    my $UserAgentObject = LWP::UserAgent->new;
    my $ResponseObject = $UserAgentObject->get('http://www.cnn.com');
    
    # /$pattern/ indicates a "regular expression" (abbreviated "regex") in Perl:
    my @line_by_line = split /\n/, $ResponseObject->content;
    
    my $keyword = $self->keyword;
    
    foreach my $line (@line_by_line){
        #Split by and discard "things that are enclosed in angle brackets"
        my @words_in_line = split /<.*?>/, $line;
        
        #Keep those array elements that match words in the `split` results:
        my $line_of_words;
        my $SPACE = " ";
        foreach my $word_s (@words_in_line){
            #/\w/ means `match a word`
            #/+/ means `match ONE or more of the preceding`
            #.= means `concatenate to whatever is in the preceding variable`
            
            if ($word_s =~ /\w+/){
                $line_of_words .= $word_s.$SPACE; 
            }
            
             #//i means `ignore the case of the match`
            if ($line_of_words and $line_of_words =~ /$keyword/i){
                print "KEYWORD!: $line_of_words\n\n\n"
            }
            
            #A variable alone in an `if` statement indicates a boolean test
            #/^/ means `match the beginning of the string`
            #/\s/ means `match a space`
            #/*/ means `match ZERO or more of the preceding`
            if ($line_of_words and $line_of_words =~ /^\s*CNN/){
                print "The following line starts with \"CNN\":".$line_of_words."\n";
            }
            
            #Clear this variable, even if the keyword is found
            #on the same line--we'll take that chance:
            undef $line_of_words;
        }
        
    }
}

#Discuss learning objectives, individual comments on how this is going, etc.


