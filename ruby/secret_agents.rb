# Encrypt Pseudo Code
# define a method called encrypt.
# create a variable called index and assign it a value of 0.
# create a while loop where it will go through each index position in the password and advance the character.
# put in an if clause which removes an added letter when the letter 'z' is used.
# add one to index to go to the next letter in the index position.
# return the input.

def encrypt(password)
  index = 0
  while index < password.length
    if password[index] == "z"
      password[index] = password[index].next!.chop
    else
      password[index] = password[index].next!
    end
    index += 1
  end
  password
end

# Decrypt Pseudo Code
# define a method called decrypt.
# create a variable called string which encases the alphabet.
# create a variable called index and assign it a value of 0.
# then create a while loop with a conditional statement index is less than the length of the input
# use the index method on a letter in our password and take the index and apply it to the string
# reduce the index by 1 for each character and take the result and apply it to password.
# add one to index to go to the next letter
# print the input

def decrypt(password)
  alpha = "abcdefghijklmnopqrstuvwxyz"
  index = 0
  while index < password.length
    password[index] = alpha[alpha.index(password[index]) - 1]
    index += 1
  end
  password
end

# p encrypt("abc")
# p encrypt("zed")
# p decrypt("bcd")
# p decrypt("afe")

# p decrypt(encrypt("swordfish"))

# Ask user if they would like to encrypt or decrypt their password.
# Create a loop to make sure the user enters the correct inputs.
# Ask user to enter in the password they would like to use.
# Once the user enters in their password the requested methods will be executed.
# Then it will present the users request.

puts "Would you like to encrypt or decrypt your password? Please enter 'encrypt' or 'decrypt'."
pass_type = gets.chomp.downcase

until pass_type == "encrypt" || pass_type == "decrypt"
  puts "Invalid input. Please enter 'encrypt' or 'decrypt'."
  pass_type = gets.chomp.downcase
end

puts "Please enter your password."
pass_word = gets.chomp.downcase

if pass_type == "encrypt"
  p encrypt(pass_word)
else
  p decrypt(pass_word)
end