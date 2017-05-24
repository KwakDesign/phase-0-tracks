class Santa
  def initialize(gender, ethnicity, age)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = age
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def celebrate_birthday
    puts "Happy Birthday Santa, you're #{@age + 1} now!"
  end

end

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# santa_group = []
# santa_genders = ["agender", "bigender", "female", "gender fluid", "male", "pangender", "N/A"]
# santa_ethnicities = ["African-American", "Asian/Pacific-Islander", "Caucasian", "Latino", "South Asian", "Mystical Creature (unicorn)", "N/A"]

# santa_genders.length.times do |i|
#   santa_group << Santa.new(santa_genders[i], santa_ethnicities[i])
#   santa_group.each_with_index do |santa, idx|
#     puts santa.speak
#     break
#   end
# end

nick = Santa.new("male", "Caucasian", 60)
nick.celebrate_birthday