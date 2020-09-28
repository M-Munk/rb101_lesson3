# The Ruby Array class has several methods for removing items from the array. 
# Two of them have very similar names. Let's see how they differ

numbers = [1, 2, 3, 4, 5]  # [1, 3, 4, 5]
numbers.delete_at(1)
# deletes the element at the specified index, returning that element or nil
# if the index is out of range.

numbers = [1, 2, 3, 4, 5] # [2, 3, 4, 5]
numbers.delete(1)
# deletes all items from the array that are equal to the argument (1)
# Returns the last deleted item or nil if no matching item was found
# if the optional code block is given, the result of the block is returned 
# if the item is not found

# note that while both of these methods mutate the caller, neither ends with the !
# at the end of the method name