# def dot_separated_ip_address?(input_string)
#   dot_separated_words = input_string.split(".")
#   while dot_separated_words.size > 0 do
#     word = dot_separated_words.pop
#     break unless is_an_ip_number?(word)
#   end
#   return true
# end

# Alyssa supplied Ben with a method called is_an_ip_number? that 
# determines if a string is a numeric string between 0 and 255 as 
# required for IP numbers and asked Ben to use it.

# Alyssa reviewed Ben's code and says "It's a good start, 
# but you missed a few things. You're not returning a false condition, 
# and you're not handling the case that there are more or fewer than 4 
# components to the IP address (e.g. "4.5.5" or "1.2.3.4.5" should be invalid)."

# conditions for true - length of split == 4
# every member of split is_an_ip_number?

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4
  x = 0
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
    x += 1
  end
  x == 4
end

def is_an_ip_number?(number)
  (0..255).include?(number.to_i)
end

puts "#{dot_separated_ip_address?('1.1.1.1')}"
puts "#{dot_separated_ip_address?('3.2.125.3546.3.2')}"

