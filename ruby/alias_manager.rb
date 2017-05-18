# Alias Manager Application Pseudo Code
# Collect user's first name and last name and capitalize each first letter if not capitalized already.
# Swap first name and last name.
# Iterate through each character in first name and change all vowels(a,e,i,o,u) to the next vowel in 'aeiou' and all consonants to the next consonant in the alphabet.
# Then return the updated the updated first and last name.

puts "Please enter your name."
name = gets.chomp

def vowel_adv(name)
  vowels = ["a", "e", "i", "o", "u"]
  name = name.split('')
  updated_name = name.map do |char|
    if vowels.include?(char)
      vowels.rotate[vowels.index(char)]
    else
      char
    end
  end
  updated_name.join
end

vowel_name = vowel_adv(name)

def consonant_adv(vowel_name)
  consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  vowel_name = vowel_name.split('')
  conson_name = vowel_name.map do |char|
    if consonants.include?(char)
      consonants.rotate[consonants.index(char)]
    else
      char
    end
  end
  conson_name.join
end

consonant_adv(vowel_name)


