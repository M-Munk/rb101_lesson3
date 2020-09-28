# The result of the following statement will be an error:

# puts "the value of 40 + 2 is " + (40 + 2)

# Why is this and what are two possible ways to fix this?

# TypeError - no implicit conversion of Integer into String

puts ("the value of 40 + 2 is #{40 + 2}")
puts ("the value of 40 + 2 is " + (40 + 2).to_s)
