# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     "WHOO!!!" + words + "!!!" + " :D"
#   end
# end

# puts Shout.yell_angrily("THE HECK MAN")
# puts Shout.yelling_happily("OH YEAH MANE")

module Shout
  def yell_angrily(words)
    puts words + "!!!" + " >:("
  end

  def yelling_happily(words)
    puts "WHOO HOO!!!" + words + "!!!" + " :D"
  end
end

class SportsFan
  include Shout
end

class AngryBird
  include Shout
end

fan = SportsFan.new
fan.yelling_happily("YEAH MANE")

bird = AngryBird.new
bird.yell_angrily("WHAT THE HECK MAN")