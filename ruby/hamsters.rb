# Hamster Sanctuary Project

# Ask the user for the following information:
# * hamster's name (name is given to hamster's without a name)
# * hamster's volume level from 1 - 10 (1 being softest, 10 being the loudest)
# * hamster's fur color
# * if hamster is a good candidate for adoption
# * hamster's estimated age (if age is not given use nil)

puts "What is the hamster's name?"
ham_name = gets.chomp
puts "How loud is the hamster? (from a scale of 1 - 10, 10 being the loudest)"
ham_volume = gets.chomp.to_i
puts "What is the hamster's fur color?"
ham_fur = gets.chomp
puts "Is the hamster a good candidate for adoption? (y/n)"
ham_adopt = gets.chomp
puts "How old is the hamster? (please enter a numerical value)"
ham_age = gets.chomp

if ham_age == ""
  ham_age = nil
else
  ham_age = ham_age.to_i
end

puts "The hamster's name is: #{ham_name}."
puts "It's loudness level is: #{ham_volume}."
puts "It's fur color is: #{ham_fur}."
puts "Is the hamster a good candidate? #{ham_adopt}."
puts "The age of the hamster is: #{ham_age}."


