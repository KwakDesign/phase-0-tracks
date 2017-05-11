# Encrypt Pseudo Code
# define a method called encrypt.
# create a variable called index and assign it a value of 0.
# then create a while loop with a conditional statement index is less than the length of the input
# if the letter 'z' is passed into argument chop off the next letter in the sequence
# otherwise find the index of the input and set it to the next letter using the next method with a bang operator to mutate it.
# add one to index to go to the next letter
# print the input

def encrypt(pass)
  index = 0
  while index < pass.length
    if pass[index] == "z"
      pass[index] = pass[index].next!.chop
    else
      pass[index] = pass[index].next!
    end
    index += 1
  end
  p pass
end

# Decrypt Pseudo Code
# define a method called decrypt.
# create a variable called string which encases the alphabet.
# create a variable called index and assign it a value of 0.
# then create a while loop with a conditional statement index is less than the length of the input
# use the index method on a letter in our pass and take the index and apply it to the string
# reduce the index by 1 for each character and take the result and apply it to pass.
# add one to index to go to the next letter
# print the input

def decrypt(pass)
  string = "abcdefghijklmnopqrstuvwxyz"
  index = 0
  while index < pass.length
    pass[index] = string[string.index(pass[index]) - 1]
    index += 1
  end
  p pass
end



