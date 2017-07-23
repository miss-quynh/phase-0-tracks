puts "How many employees will be processed?"
process_input = gets.chomp
current_count = 1

while current_count <= process_input.to_i
  puts "What is your name?"
  name_input = gets.chomp

  puts "Hello, #{name_input}! How old are you?"
  age_input = gets.chomp

  puts "What year were you born?"
  birth_year = gets.chomp

  puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
  garlic_input = gets.chomp

  puts "Would you like to enroll in the company's health insurance? (y/n)"
  insurance_input = gets.chomp

  puts "Please list your allergies, #{name_input}."
  allergies_input = nil
      until allergies_input == "Done"
        allergies_input = gets.chomp
        if allergies_input == "Sunshine"
          all_conditions = "Probably a vampire."
        break
        end
      end

  current_year = 2017

  if age_input.to_i == current_year - birth_year.to_i
    actual_age = true
  else
    actual_age = false
  end

  if garlic_input == "y"
    garlic_input = true
  else
    garlic_input = false
  end

  if insurance_input == "y"
    insurance_input = true
  else
    insurance_input = false
  end


if allergies_input != "Sunshine"

  if actual_age && (garlic_input || insurance_input)
    all_conditions = "Probably not a vampire."
  end

  if !actual_age && (!garlic_input || !insurance_input)
    all_conditions = "Probably a vampire."
  end

end


  if !actual_age && !garlic_input && !insurance_input
    all_conditions = "Almost certainly a vampire."
  end

  if name_input == "Drake Cula"
    all_conditions = "Definitely a vampire!"
  end

  if name_input == "Tu Fang"
    all_conditions = "Definitely a vampire!"
  end

  if !all_conditions
    puts "Results inconclusive."
  end

  puts all_conditions

  current_count += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."