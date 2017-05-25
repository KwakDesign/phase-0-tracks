class Puppy

  def initialize
    puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num_of_times)
    puts "Woof! " * num_of_times
  end

  def roll_over
    puts "*roll_over*"
  end

  def dog_years(dog_years)
    human_year = dog_years * 7
    human_year
  end

  def sniff(thing)
    puts "Odie sniffed a #{thing}."
  end

end

# odie = Puppy.new
# odie.fetch("ball")
# odie.speak(5)
# odie.roll_over
# puts odie.dog_years(3)
# odie.sniff("flower")


class Stormtrooper

  def initialize(idx)
    puts "Stroomtrooper #{idx} reporting for duty and ready to fight rebel scum!"
  end

  def fire_blaster(how_many)
    puts "Pew! " * how_many
  end

  def scream
    puts "TRAITOR!!!"
  end

end

# trooper = Stormtrooper.new
# trooper.fire_blaster(3)
# trooper.scream

trooper_group = []

index = 1
while trooper_group.length < 50
  trooper = Stormtrooper.new(index)
  trooper_group << trooper
  index += 1
end

trooper_group.each do |trooper|
  puts trooper.fire_blaster(3)
  puts trooper.scream
end



