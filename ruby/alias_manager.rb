

def next_vowel(vowel)
  vowels = "aeiouAEIOU"
  index = 0
  while index < vowels.length
    if vowels[index] == vowel
      if vowels[index] == "u"
        return "a"
      elsif vowels[index] == "U"
        return "A"
      else
        return vowels[index + 1]
      end
    end
    index += 1
  end
  return vowel
end

def next_consonant(consonant)
  consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
  index = 0
  while index < consonants.length
    if consonants[index] == consonant
      if consonants[index] == "z"
        return "b"
      elsif consonants[index] == "Z"
        return "B"
      else
        return consonants[index + 1]
      end
    end
    index += 1
  end
  return consonant
end

def transform_name(first_name, last_name)
  name = last_name + " " + first_name
  vowels = "aeiouAEIOU"
  characters = name.split('')
  index = 0
  while index < characters.length
    if vowels.include? characters[index]
      characters[index] = next_vowel(characters[index])
    else
      characters[index] = next_consonant(characters[index])
    end
    index += 1
  end
  return characters.join
end


# USER INTERFACE

results = {}

loop do
  puts "Please enter your first name."
  first_name = gets.chomp
  puts "Please enter your last name."
  last_name = gets.chomp

  name = first_name + " " + last_name
  results[name] = transform_name(first_name, last_name)

  puts "Please press Enter to enter a new name or type 'quit' to exit."
  user_input = gets.chomp

  break if user_input == 'quit'
end

results.each do |real_name, transform_name|
  p "#{transform_name} is actually #{real_name}!"
end