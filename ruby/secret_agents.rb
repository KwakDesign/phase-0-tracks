# Encrypt Pseudo Code
# Define a method called encrypt, that takes the user's password input and runs a loop on it which will go through each letter in the password and go to the letter character after it based on it's position on the alphabet sequence and then return the updated encrypted password.
# If the user happen to enter the letter 'z' the 'next' method which is used to advance the letter to the next character in the alphabet returns another an extra letter, so the 'chop' method in a conditional statement to account for this scenario to remove it.

def encrypt(password)
  index = 0
  while index < password.length
    if password[index] == "z"
      password[index] = password[index].next.chop
    else
      password[index] = password[index].next
    end
    index += 1
  end
  password
end

# Decrypt Pseudo Code
# Define a method called decrypt, that takes the user's password input and runs a loop on it which will go through each letter in the password and go to the letter character before it based on it's position on the alphabet sequence and then return the updated decrypted password.

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

# Interface Pseudo Code
# Ask user if they would like to encrypt or decrypt their password.
# Create a loop to make sure the user enters the correct input.
# Ask user to enter in the password they would like to use.
# Once the user enters their password the requested method will be executed.
# Then it will present the users updated password.

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