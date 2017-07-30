puts "What is your name?"
  name = gets.chomp

puts "How old are you?"
  age = gets.chomp

puts "How many children do you have?"
  number_of_children = gets.chomp

puts "What is your desired theme?"
  decor_theme = gets.chomp

puts "Have you ever owned a home before? (y/n)"
  home_owner = gets.chomp

age.to_i
number_of_children.to_i

post = {
  name: "#{name}",
  age: "#{age}",
  number_of_children: "#{number_of_children}",
  decor_theme: "#{decor_theme}",
  home_owner: "#{home_owner}"
}

p post.keys
p post.values
p post[:name]
p post[:age]
p post[:number_of_children]
p post[:decor_theme]
p post[:home_owner]
