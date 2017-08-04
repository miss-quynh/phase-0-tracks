class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance: #{gender}, #{ethnicity}."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = "Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"
    @age = 0
  end

  def age(age_number)
    puts age_number
  end

  def speak(phrase)
    puts phrase
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def celebrate_birthday(age_number)
    current_age = age_number + 1
    puts current_age
  end

  def get_mad_at(reindeer_ranking)
    puts reindeer_ranking
  end

  # setter methods
#  def gender=(new_gender)
#    @gender = new_gender
#  end

  # getter methods
#  def age
#    @age
#  end

#  def ethnicity
#    @ethnicity
#  end
end


santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "gender bender", "pangender", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Asian", "hapa", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

santas.each do |instance|
  instance.age(1)
  instance.speak("Ho, ho, ho! Haaaaappy holidays!")
  instance.eat_milk_and_cookies("Snickerdoodle")
  instance.celebrate_birthday(1)
  instance.get_mad_at("Vixen")
  instance.gender = "gender bender"
end


x = 0

santa_instances = []

until x == 20
  santa_instances << Santa.new(example_genders[x], example_ethnicities[x])
  example_ethnicities.sample
  example_genders.sample
  age = rand(0..140)
  x += 1
end

santa_instances.each do |instance|
  instance.speak("Ho, ho, ho! Haaaaappy holidays!")
  instance.eat_milk_and_cookies("Snickerdoodle")
  instance.celebrate_birthday(0)
  instance.get_mad_at("Vixen")
  instance.gender = "gender bender"
end