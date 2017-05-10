
puts "Please enter the numbe of employees being proccessed."
num_of_employees = gets.chomp.to_i

until num_of_employees == 0
  puts "What's your name?"
  employee_name = gets.chomp
  puts "How old are you?"
  employee_age = gets.chomp.to_i
  puts "What year were you born?"
  employee_birth_year = gets.chomp.to_i
  puts "Do you eat garlic bread? (y/n)"
  employee_garlic_bread = gets.chomp
  puts "Would you like to enroll in the company's health insurance? (y/n)"
  employee_health = gets.chomp
  employee_real_age = Time.new.year - employee_birth_year

  if employee_name == 'Drake Cula' || employee_name == "Tu Fang"
    puts "“Definitely a vampire."
  elsif employee_age == employee_real_age && (employee_garlic_bread == "y" || employee_health == "y")
    puts "Probably not a vampire."
  elsif employee_age != employee_real_age && employee_garlic_bread == "n" && employee_health == "n"
    puts "Almost certainly a vampire."
  elsif employee_age != employee_real_age && (employee_garlic_bread == "n" || employee_health == "n")
    puts "Probably a vampire."
  else
    puts "“Results inconclusive."
  end
  num_of_employees -= 1
end