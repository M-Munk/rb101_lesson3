greetings = { a: 'hi' }
puts greetings.object_id
puts greetings[:a].object_id
informal_greeting = greetings[:a]
puts informal_greeting.object_id
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings # {:a=>"hi there"}

# informal_greetings points to the object in the hash & the shovel operator 
# mutates that object changing it inside the hash as well rather than 
# assigning informal_greeting to a copy of the same information but not the same 
# object as the hash object

# from the solution:

# The output is {:a=>"hi there"}. The reason is because informal_greeting is a 
# reference to the original object. The line informal_greeting << ' there' 
# was using the String#<< method, which modifies the object that called it. 
# This means that the original object was changed, thereby impacting the 
# value in greetings. If instead of modifying the original object, 
# we wanted to only modify informal_greeting but not greetings, 
# there are a couple of options:

# we could initialize informal_greeting with a reference to a new object 
# containing the same value by informal_greeting = greetings[:a].clone.

# we can use string concatenation, 
# informal_greeting = informal_greeting + ' there', which returns 
# a new String object instead of modifying the original object.