def block_testing
  student1 = "John"
  student2 = "Jane"
  puts "The student has not begun racing yet."
  yield(student1, student2)
end

block_testing { |student1, student2| puts "The students #{student1} and #{student2} have begun running for the race." }


# declare an array

type_of_food = ["sausage", "pizza", "waffles"]

type_of_food.each do |food|
  puts "I am hungry!!! I want #{food}!!!"
end

type_of_food.map! do |food|
  food.upcase
end
p type_of_food

type_of_food.delete("sausage")
p type_of_food

type_of_food.keep_if { |food| food == "sausage" || food == "waffles" }
p type_of_food

type_of_food.select! { |food| food == "sausage" || food == "waffles" }
p type_of_food

type_of_food.delete_if { |food| food.include?("s") }
p type_of_food


# declare a hash

ethnic_cuisine = {'German' => 'sausage', 'Italian' => 'pizza', 'American' => 'waffles'}

ethnic_cuisine.each do |ethnicity, food|
  puts "If you are in the mood for #{ethnicity} cuisine, then eat #{food}."
end

ethnic_cuisine.delete("sausage")
p ethnic_cuisine

ethnic_cuisine.keep_if { |ethnicity, food| ethnicity == "German" || food == "waffles" }
p ethnic_cuisine

ethnic_cuisine.select! { |ethnicity, food| ethnicity == "German" || food == "waffles" }
p ethnic_cuisine