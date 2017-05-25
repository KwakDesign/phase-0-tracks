class Santa
  # getter and setter shortcuts
  attr_reader :age, :reindeer_ranking
  attr_accessor :gender, :ethnicity

  def initialize(gender, ethnicity, age)
    puts "Ho, ho, ho!"
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

# Driver Code
# nick = Santa.new("male", "Caucasian", 60)
# nick.celebrate_birthday
# nick.get_mad_at("Vixen")
# puts "Here is the current reindeer ranking: #{nick.reindeer_ranking}"
# puts "Santa's gender is #{nick.gender}."
# nick.gender = "female"
# puts "Santa's gender is now #{nick.gender}."

santa_group = []
santa_genders = ["agender", "bigender", "female", "gender fluid", "male", "pangender", "N/A"]
santa_ethnicities = ["African-American", "Asian/Pacific-Islander", "Caucasian", "Latino", "South Asian", "Mystical Creature (unicorn)", "N/A"]
random_age = Random.new

while santa_group.length < 10
  a_santa = Santa.new(santa_genders.sample, santa_ethnicities.sample, random_age.rand(141))
  santa_group << a_santa
end

santa_group.each do |santa|
  puts "I'm a #{santa.age} year old #{santa.gender} Santa and my ethnicity is #{santa.ethnicity}."
  puts santa.speak
end

# santa_genders.length.times do |i|
#   santa_group << Santa.new(santa_genders.sample, santa_ethnicities.sample, random_age.rand(141))
#   # santa_group.each_with_index do |santa, idx|
#   #   puts santa.speak
#   #   break
#   # end
#   puts santa_group
# end