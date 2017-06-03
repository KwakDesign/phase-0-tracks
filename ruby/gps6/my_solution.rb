# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require relative loads the file from the directory where you are working from.
# require loads the file from the directory path that you designate.
require_relative 'state_data'

class VirusPredictor

  # takes in the necessary attributes and generates the instance variables when an instance of the class is created.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # combination of calling the two main instance methods of this class VirusPredictor.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  # the private keyword makes the following lines of code exclusive to this class
  private

  # categorizes the states based off of the population density and calculates the number of deaths based on which category condition it is.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      factor = (0.4)
    elsif @population_density >= 150
      factor = (0.3)
    elsif @population_density >= 100
      factor = (0.2)
    elsif @population_density >= 50
      factor = (0.1)
    else
      factor = (0.05)
    end
    number_of_deaths = (@population * factor).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # categorizes the states based off of the population density and calculates the speed of the spread of the disease based on which category condition it is.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, population|
  new_state = VirusPredictor.new(state, population[:population_density], population[:population])
  new_state.virus_effects
end


#=======================================================================
# Reflection Section