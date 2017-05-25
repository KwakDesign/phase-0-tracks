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

odie = Puppy.new
odie.fetch("ball")
odie.speak(5)
odie.roll_over
puts odie.dog_years(3)
odie.sniff("flower")