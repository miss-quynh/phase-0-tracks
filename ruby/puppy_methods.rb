class Puppy

  def initialize
    puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
    puts "Woof! " * integer
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(number_of_human_yrs)
    dog_yrs = number_of_human_yrs * 7
    puts dog_yrs
  end

  def shake_hands
    puts "*shakes hand*"
  end

end

puppy = Puppy.new

puppy.fetch("ball")
puppy.speak(3)
puppy.roll_over
puppy.dog_years(5)
puppy.shake_hands

toby = Puppy.new

#Release 2-----------------
class Sport

  def initialize
    puts "Initializing..."
  end

  def chant(number_of_times)
    puts "We will, we will rock you! " * number_of_times
  end

  def high_five
    puts "*high five*"
  end

end

#basketball = Sport.new
#basketball.chant(3)
#basketball.high_five

x = 0

sport_instances = []

until x == 50
  sport_instances << Sport.new
  x += 1
end

# p sport_instances

sport_instances.each do |instance|
  instance.chant(1)
  instance.high_five
end