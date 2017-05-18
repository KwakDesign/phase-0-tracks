# Alias Manager Application Pseudo Code
# Collect user's first name and last name and capitalize each first letter if not capitalized already.
# Swap first name and last name.
# Iterate through each character in first name and change all vowels(a,e,i,o,u) to the next vowel in 'aeiou' and all consonants to the next consonant in the alphabet.
# Then return the updated the updated first and last name.

puts "Please enter your name."
name = gets.chomp

puts "Please enter your name."
name = gets.chomp

def alias_modifier(name)
  low_vowels = ["a", "e", "i", "o", "u"]
  up_vowels = ["A", "E", "I", "O", "U"]
  low_consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  up_consonants = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z"]
  name = name.split('')
  updated_name = name.map do |char|
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

alias_modifier(name).split(' ').reverse.join(' ')



