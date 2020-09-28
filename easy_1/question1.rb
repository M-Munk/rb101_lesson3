numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# what do you expect the code above to print out
# puts method automatically calls to_s on its argument, which is 
# why you see the output this way.
# numbers.unique does not mutate the caller, it returns a new array
# p method automatically calls inspect on its argument, so p numbers
# or puts numbers.inspect will print out [1, 2, 2, 3]

# 1
# 2
# 2
# 3