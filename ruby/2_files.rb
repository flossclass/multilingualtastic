#!/usr/bin/env ruby

#This returns a "file handle":
file_handle = File.open("2_files/temp.txt")

#Filehandles are enumerable, enumerable line-by-line,
#which means we can call `each` on the file handle,
#and get one line at a time.
#Let's print one line at a time:
file_handle.each { |line|
  puts line
}

#This completely overwrites the file:
logfile = File.new("2_files/log.txt", "w")
logfile.puts('Write this line to the filehandle, and hence the file.')
logfile.close #You should (must) close the filehandle when done with it.
#Try this code without closing the filehandle here.


#This "appends" to the file without overwriting it:
logfile = File.new("2_files/log.txt", "a")
logfile.puts('Add or append this line to the file.')

#For more info, see http://www.techotopia.com/index.php/Working_with_Files_in_Ruby