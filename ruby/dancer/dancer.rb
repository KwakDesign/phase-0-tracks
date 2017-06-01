# implemented a leap method which has the dancer leap
# implemented a change tutu color method which changes the color the dancers tutu, the default tutu color is white.
# updated the queue dance with method to limit the number of dancers that can be on the card and shows a message if there are too many dancers currently on the card.

class Dancer
  attr_accessor :name, :age, :card, :tutu_color

  def initialize(name, age)
    @name = name
    @age = age
    @card = []
    @tutu_color = "white"
  end

  def pirouette
    "*twirls*"
  end

  def bow
    "*bows*"
  end

  def leap
    "*leaps*"
  end

  def queue_dance_with(name)
    if @card.length == 5
      "There are too many dancers who have signed up. Please wait."
    else
      @card << name
    end
  end

  def begin_next_dance
    this_dancer = @card.shift
    "Now dancing with #{this_dancer}."
  end

end

# dancer_one = Dancer.new("Bob", 20)
# dancer_one.queue_dance_with('Tim')
# dancer_one.queue_dance_with('Jim')
# dancer_one.queue_dance_with('Bob')
# dancer_one.queue_dance_with('Joe')
# dancer_one.queue_dance_with('Tom')
# puts dancer_one.queue_dance_with('Pat')

# p dancer_one.card
