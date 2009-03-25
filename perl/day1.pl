#!/usr/bin/perl -w
#Terminal: which $your_language

#Google: import module or library $your_language
#Google: perl "use strict" $your_language
use strict;

#Google: print statement $your_language
print 'Hello world!';

#Google: single double quotes $your_language
#Google: concatenation $your_language
#Google: newline $your_language
print 'Hello world!'."\n";
print "Hello world!\n";

#Google: declare scalar variable $your_language
#Google: lexical variable $your_language
my $hello = 'Hello world!'."\n";

#Google: array $your_language
my @hello = ('Hello', 'world');

#Google: global variable $your_language
our $word = 'hello';

#Google: for each loop $your_language
for $word (@hello){
    print $word."\n";
}

foreach my $item (@hello){
    print $item."\n";
}

for (@hello){
    print $_."\n"
}

for (@hello){
    $_ = lc $_
}

for (@hello){
    print $_."\n";
}

#Google: "symbol table" $your_language
{   no strict 'refs';
    for my $word (@hello){
        print *{$word}."\n";#This is a symbol table pointer
    }
    
}

#STOP/THINK: What is the following going to print?
print "The variable \$hello is equal to $hello\n";

for (@hello){
    print \$_."\n";#This will print the memory address of the array element
}
for my $word (@hello){
    print \$word."\n";#This will print the memory address of the array element
}

#STOP/THINK: Compare the memory addresses

#Google: scoping $your_language
{   no strict; no warnings;
    
    print "What follows is the memory address for the \$word variable "
        . "in its global scope: ". \$word ."\n";#Memory address
 
    my $word;
    foreach $word (@hello){
        print $word."\n";
    }
    print "What follows is not a word:" . $word . "\n";
    
    print "This is its memory address "
        . "(the lexically-scoped version of \$word): ".\$word;
        
    #STOP/THINK: Compare the memory addresses
}

#Google: subroutines OR functions $your_language
sub hello {
    
    #SITE: http://en.wikipedia.org/wiki/Standard_streams
    print STDERR "Congrats, you hit the \"hello\" subroutine!\n";
    
    #Google: return subroutine OR function $your_language
    return "How many times can one possibly say hello?!\n"
}

sub HELLO {
    
    #STOP/THINK: what will the following print? Look closely:
    print STDERR 'Congrats, you hit the "'. uc hello .' subroutine!'."\n";
}

{   no strict 'refs';
    
    $hello = $hello[0];
    print "The global variable \$hello is now equal to $hello\n";
        
    #Google: call variable as a subroutine OR function $your_language
    my $say_what = $hello->();
    print $say_what;
    
    my $say_it_again = hello();
    print $say_it_again;
    
    $hello[0] = uc $hello[0];
    
    print "The global variable \$hello is now equal to $hello\n";
    $hello[0]->();
}

{   package mine;
    no strict 'refs';
    my $var = 'Testing123';
    
    #STOP/THINK: what will the following print? 
    print *{$var}."\n";
}

{   my $var;
    #STOP/THINK: what will the following print? 
    print *{$var}."\n";
}

{   no strict 'refs'; no warnings;
 
    my $symbol = 'hello'; 
    print *{symbol}."\n";
    print *{$symbol}."\n";
    
    #Assign variable the string value of 'copy'
    my $copy = 'copy';
    #Assign symbol table entry for *symbol to *copy
    *copy = *symbol;
    
    print "Here is the current value of \$symbol: $symbol\n";
    print "\$symbol's symbol table entry is: ". *{$symbol} ."\n";
    
    print "Here is the current value of \$copy: $copy \n";
    print "\$copy's symbol table entry is: ". *{$copy} ."\n";
    
    print \$symbol."\n";
    print \$copy."\n";
    
    warn "We are calling a sub via the \$symbol variable:\n";
    $symbol->();
    
    warn "We are calling a sub via the \$copy variable:\n";
    $copy->();
    
    warn "We are explicitly calling a sub named 'symbol':\n";
    symbol();
    
    warn "We are explicitly calling a sub named 'copy':\n";
    copy();
    
    sub symbol {
       print STDERR "You hit the symbol sub!\n";
    }
    
    sub copy {
       print STDERR "You hit the copy sub!\n";
    }
}
