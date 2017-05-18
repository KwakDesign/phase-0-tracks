# Alias Manager Application Pseudo Code
# Split the full name into individual characters and run each character against a conditional logic checking to see if it falls under a lower and upper case vowel or lower and upper case consonant or neither.
# If the vowel or consonant is found return the next character of it's kind and if it's not found under either one just return it.
# Combine the split characters back into a full name.
# Return the modified full name.

def alias_modifier(full_name)
  low_vowels = ["a", "e", "i", "o", "u"]
  up_vowels = ["A", "E", "I", "O", "U"]
  low_consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  up_consonants = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z"]
  full_name = full_name.split('')
  updated_name = full_name.map do |char|
    if low_vowels.include?(char)
      low_vowels.rotate[low_vowels.index(char)]
    elsif up_vowels.include?(char)
      up_vowels.rotate[up_vowels.index(char)]
    elsif low_consonants.include?(char)
      low_consonants.rotate[low_consonants.index(char)]
    elsif up_consonants.include?(char)
      up_consonants.rotate[up_consonants.index(char)]
    else
      char
    end
  end
  updated_name.join
end

# User Interface Pseudo Code
# Collect user's full name.
# Run the alias modifier code passing in the full name as it's parameter.
# Swap the full name so that the first name becomes the last name and the last name becomes the first name.
# Continue to run the alias modifier until the user enters 'quit'.

full_name = ''
until full_name == 'q'
  puts "Please enter your full name so you can be given an alias.(enter 'q' to quit)"
  full_name = gets.chomp
  break if full_name == 'q'
  p alias_modifier(full_name).split(' ').reverse.join(' ')
end


