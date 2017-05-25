class Santa
  # Release 3
  # getter and setter shortcuts
  attr_reader :age, :reindeer_ranking
  attr_accessor :gender, :ethnicity

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

  def get_mad_at(reindeer_name)
    @reindeer_ranking.insert(8, @reindeer_ranking.delete(reindeer_name))
  end
end

# Release 1 work
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

# Release 2 work
nick = Santa.new("male", "Caucasian", 60)
nick.celebrate_birthday
nick.get_mad_at("Vixen")
puts "Here is the current reindeer ranking: #{nick.reindeer_ranking}"
puts "Santa's gender is #{nick.gender}."
nick.gender = "female"
puts "Santa's gender is now #{nick.gender}."