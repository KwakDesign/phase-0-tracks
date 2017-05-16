# Interior Designer Client Info Application Pseudo Code
# Collect client's information which include the client's name, age, number of children they have, decor theme, favorite color, their spending budget and if they have pets.
# In the case the user has entered incorrect information on any of the questions, allow the user to re-enter the correct information.
# Once all information has been collected, display it.


client_info = {
  client_name: "",
  client_age: "",
  client_children: "",
  client_decor: [],
  client_color: [],
  client_budget: "",
  client_pets: false
}

puts "Welcome to the Client Information Application for Interior Designers."

puts "Please enter your client's name."
client_info[:client_name] = gets.chomp

puts "Please enter your client's age."
client_info[:client_age] = gets.chomp.to_i

puts "Please enter the number of children your client has."
client_info[:client_children] = gets.chomp.to_i

puts "Please enter the decor themes your client desires."
client_info[:client_decor] = gets.chomp

puts "Please enter your client's favorite colors."
client_info[:client_color] = gets.chomp

puts "Please enter your client's spending budget for the project."
client_info[:client_budget] = gets.chomp.to_i

puts "Please enter your if your client has pets.(y/n)"
client_own_pets = gets.chomp

if client_own_pets == 'y'.downcase
  client_info[:client_pets] = true
else
  client_info[:client_pets]
end

puts "Is there any information you need to update? Enter 'client_name', 'client_age', 'client_children', 'client_decor', 'client_color', 'client_budget', 'client_pets'. If not type 'none'."
client_update = gets.chomp.to_sym

if client_update == :none
  p client_info
elsif client_update == :client_name
  puts "Please enter your client's name."
  client_info[:client_name] = gets.chomp
  p client_info
elsif client_update == :client_age
  puts "Please enter your client's age."
  client_info[:client_age] = gets.chomp.to_i
  p client_info
elsif client_update == :client_children
  puts "Please enter the number of children your client has."
  client_info[:client_children] = gets.chomp.to_i
  p client_info
elsif client_update == :client_decor
  puts "Please enter the decor theme your client desires."
  client_info[:client_decor] = gets.chomp
  p client_info
elsif client_update == :client_color
  puts "Please enter your client's favorite color."
  client_info[:client_color] = gets.chomp
  p client_info
elsif client_update == :client_budget
  puts "Please enter your client's spending budget for the project."
  client_info[:client_budget] = gets.chomp.to_i
  p client_info
elsif client_update == :client_pets
  puts "Please enter your if your client has pets.(y/n)"
  client_own_pets = gets.chomp

  if client_own_pets == 'y'.downcase
    client_info[:client_pets] = true
    p client_info
  else
    client_info[:client_pets]
    p client_info
  end
end