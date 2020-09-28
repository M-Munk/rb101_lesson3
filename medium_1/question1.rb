# For this practice problem, write a one-line program that creates the following output 10 times, 
# with the subsequent line indented 1 space to the right:

str = "The Flintstones Rock!"
10.times { puts str.prepend(" ") }

# or

10.times { |number| puts (" " * number) + "The Flintstones Rock!" }
