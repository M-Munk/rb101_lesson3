def factors(number)
  return if number <= 0 # added this line to not run if number not valid
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

# intended to show all the factors of the input number
# will fail if the input is 0 or a negative number

# 1 - the purpose of number % divisor == 0 is to check if the number is
# evenly divisible by the divisor (ie it is an integer factor of the number 
# & there is no remainder)

# 2 - the second to last line of the original function returns the list of factors
# to the method call

# solution from answer section:
while divisor > 0 do
  factors << number / divisor if number % divisor == 0
  divisor -= 1
end
# changes begin/end to while block - this works better because the question
# asked to change the loop in order to make the function not raise an error 
# if the number input was 0 or negative
