#!/usr/bin/env ruby
#DIRECTIONS: Please follow along in the debugger:
require 'net/http'

a_nested_array = [1, [2, 3]]

a_hash = {'key1' => 'val1', 'key2' => 2, 'nested_array' => a_nested_array}

another_hash = {'previous_hash' => a_hash, 'previous_array' => a_nested_array}

class FrontDoor
    def color()
        return 'red'
    end
    
    def open()
        puts "We are opening the door"
        #return self
    end
    
    def close()
        puts "We are closing the door"
        #return self
    end
end

#House inherits FrontDoor:
class House<FrontDoor
    def owner()
        return 'Me!'
    end
end

my_house = House::new()
puts "The door is " + my_house.color
puts "The owner is " + my_house.owner
my_house.open
my_house.close

#STOP/THINK: What will the following do?
my_house.open.close

#CODE: Now uncomment both 'return self' lines above and try again

################################################################################

#Debugger: Examine each object below closely, going step-by-step:
netHTTPobject = Net::HTTP.start( 'www.cnn.com', 80 )
responseObject = netHTTPobject.get('/')
print responseObject.body
