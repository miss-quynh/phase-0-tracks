# Virus Predictor

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative complements the built-in method require by allowing you to load a file that is relative to the file containing the require_relative statement.

require_relative 'state_data'

class VirusPredictor

# The initialize method assigns default values into all the instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# The virus_effects method defines two types of arguments that result from the virus spread
  def virus_effects
    number_of_deaths = predicted_deaths()
    speed = speed_of_spread()
    return "#{@state} will lose #{number_of_deaths} people from the outbreak, and the virus will spread in #{speed} months."
  end

# The private method cannot be called with an explicit receiver as the receiver is always self. This means that the private method can be called only in the context of the current object; therefore, when I try to call predicted_deaths and speed_of_spread methods outside the current object, I will get an access violation runtime error.
  private

# The predicted_deaths method provides the number of deaths based on the population density in each state
  def predicted_deaths()
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    return number_of_deaths

  end

#The speed_of_spread method determines how rapidly the outbreak will spread based on the population density in each state.
  def speed_of_spread() #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    return speed

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# The report ran for all 50 states can be either in the class or outside the class. It can be in the class if you want to create another method to call upon. However, in my case, I added the driver code outside the class to run the report on all 50 states.

STATE_DATA.each do |state_name, population_info|
  state = VirusPredictor.new(state_name, population_info[:population_density], population_info[:population])
  print state.virus_effects
  puts ""
end


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
  # The overall STATE_DATA hash contains strings keys and the sub hash of each state contains symbol keys. The string keys use the hash rocket to link the key in value, and the symbol keys use the colon to define the value.
# What does require_relative do? How is it different from require?
  # require_relative complements the built-in method require by allowing you to load a file that is relative to the file containing the require_relative statement.
# What are some ways to iterate through a hash?
  # A hash can be iterated using .each or .map keys
# When refactoring virus_effects, what stood out to you about the variables, if anything?
  # The global variables were not needed to be passed through as parameters when defining the method
# What concept did you most solidify in this challenge?
  # How to iterate through a hash and learned how to differentiate between block parameters and local and global variables