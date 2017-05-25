class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num_of_times)
    puts "Woof! " * num_of_times
  end

end

odie = Puppy.new
odie.fetch("ball")
odie.speak(5)
