module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    "WHOO!!!" + words + "!!!" + " :D"
  end
end

puts Shout.yell_angrily("THE HECK MAN")
puts Shout.yelling_happily("OH YEAH MANE")