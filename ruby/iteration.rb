# Arrays
countries = ["Brazil", "Russia", "Japan", "Poland"]
numbers = [1,2,3,4,5]
new_numbers = [1,2,3,4,5]
digits = [1,2,3,4,5]
new_digits = [1,2,3,4,5]
colors = ["blue", "red", "orange", "yellow"]
updated_numbers = []

# Hashes
darkside = {
  master: "Emperor Palapatine",
  apprentice: "Darth Vader"
}

population = {
  New_York: 5000,
  Illinois: 6000,
  Texas: 7000,
  New_Jersey: 8000
}

letter_position = {
  a: 1,
  b: 2,
  c: 3,
  d: 4
}


# Release 1

light_side = {
  master: "Obi-Wan",
  apprentice: "Anakin Skywalker"
}

countries.each do |country|
  puts "Here is a country I have visited: #{country}."
end

light_side.each do |jedi|
  puts "Here are light side users: #{jedi}."
end

updated_numbers = numbers.map do |sum|
  sum + 1
end

p numbers

p updated_numbers

numbers.map! do |sum|
  sum + 1
end

p numbers

# end of Release 1

# Release 2

# Arrays
# A method that iterates through the items, deleting any that meet a certain condition
new_numbers.delete_if do |num|
  num < 3
end

p new_numbers

# A method that filters a data structure for only items that do satisfy a certain condition
digits.select! do |num|
  num.odd?
end

p digits

# A different method that filters a data structure for only items satisfying a certain condition
new_digits.collect! do |num|
  num.even?
end

p new_digits

# A method that will remove items from a data structure until the condition in the block evaluates to false, then stops
colors.keep_if do |color|
   color.length > 4
end

p colors

# Hashes
# A method that iterates through the items, deleting any that meet a certain condition
darkside.delete_if do |role, name|
  role == :master
end

p darkside

# A method that filters a data structure for only items that do satisfy a certain condition
population.select! do |state, num|
  state.length > 5
end

p population

# A different method that filters a data structure for only items satisfying a certain condition
letter_position.keep_if do |letter, num|
  num < 3
end

p letter_position

# A method that will remove items from a data structure until the condition in the block evaluates to false, then stops
# Could not find suitable method solution.

# end of Release 2










