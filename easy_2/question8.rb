# Shorten this sentence

advice = "Few things in life are as important as house training your pet dinosaur."

# remove everything starting from house

advice.slice!(0, advice.index('house'))

# if you use slice instead of slice! the original string advice is not
# changed by this method