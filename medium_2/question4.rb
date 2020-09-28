# To drive that last one home...let's turn the tables and have the string 
# show a modified output, while the array thwarts the method's 
# efforts to modify the caller's version of it.

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'  # mutating - changes the string object
  an_array_param = ['pumpkins', 'rutabaga'] # assignment, creates a new object
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}" # pupkinsrutabaga
puts "My array looks like this now: #{my_array}" # pumpkins