countries = ["Brazil", "Russia", "Japan", "Poland"]
numbers = [1,2,3,4,5]
updated_numbers = []

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