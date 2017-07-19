# Data about the hamster:

puts "What is the hamster's name?"
name = gets.chomp
puts "On a scale of 1 to 10 (10 being the loudest), how noisy is #{name}?"
noise = gets.chomp
puts "What is #{name}'s fur color?"
color = gets.chomp
puts "Is #{name} good for adoption? (y/n)"
adoption = gets.chomp
puts "How old is #{name}?"
age = gets.chomp
  if age == ""
    age = nil
  end