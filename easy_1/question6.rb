famous_words = "seven years ago..."

famous_words.insert(0, "Four score and ")
# insert mutates the original string

famous_words = "seven years ago..."
famous_words.prepend("Four score and ")
# prepend mutates the original string

# other solutions:
"Four score and " + famous_words

"Four score and " << famous_words