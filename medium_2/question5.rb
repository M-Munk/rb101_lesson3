def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# How can we refactor this practice problem to make the result easier 
# to predict and easier for the next programmer to maintain?

# First we need to clarify what we want the method to do - is it supposed to change
# the value of the objects passed in or not?  
# Second, depending on what we want it to do, actually give it a descriptive
# name based on it's purpose.
# if it should reassign values say:

def add_vegetable(a_str_param, an_array_param, a_vegetable_to_add)
  a_str_param << a_vegetable_to_add
  an_array_param << a_vegetable_to_add
end
my_string = "pumpkins"
my_array = ["pumpkins"]
add_vegetable(my_string, my_array, "rutabaga")
puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
# is rutabaga a vegetable even??

# solution from answers: 
def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"