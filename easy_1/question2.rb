# Describe the difference between ! and ? in Ruby.  And explain what would
# happen in the following scenarios:

# ! can be logical NOT operator when placed before an object - used to 
# reverse the logical state of its operand.  If the condition is true, 
# then logical NOT operator will make it false

# ! after a method name usually indicates that the method will mutate the caller
# such as numbers.uniq!, but you need to check the method implementation - not 
# part of Ruby syntax

# ? after a method name  usually indicates that the method will return a boolean 
# value but again its not part of Ruby syntax, and you need to check the method
# implementation in the Ruby docs

# ? : is the ternary operator for if..else

# !! terns any object into its boolean equivalent

# ! turns any object into the opposite of its boolean equivalent

numbers = [1, 2, 2, 3]

# 1 - what is the != and where should you use it?
# Checks if the value of two operands are equal or not. If the values are 
# not equal, then the condition becomes true.  You would use this in a control
# flow statement to specify a condition path you would like to take when two items
# are not identical to one another

if numbers != [1, 2, 3]
  puts('not equal')
end

# 2 put ! before something
puts !numbers

# 3 put ! after something
 numbers.uniq!

# 4 put ? before something
# I can't find anything that works doing this unless you mean a ternary:
numbers  == numbers.uniq ? puts("all unique") : puts("you have dupes")

# 5 put ? after something
puts numbers.include?(5)

# 6 put !! before something
puts !!numbers
