flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# How can we add multiple items to our array? (Dino and Hoppy)

flintstones.push("Dino").push("Hoppy")

flintstones.concat(%w(Dino Hoppy))

flintstones << "Dino" << "Hoppy"