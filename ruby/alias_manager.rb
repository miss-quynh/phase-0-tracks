puts "Please enter your first name."
  first_name = gets.chomp
puts "Please enter your last name."
  last_name = gets.chomp
name = last_name + first_name
p name.downcase!

letters = name.split('')


def transform_name(letters)
  vowels = "aeiou"
  consonants = "bcdfghjklmnpqrstvwxyz"
  index = 0
    letters.length.times do |i|
      if consonants.include? (letters[i])
        if letters[i] == "z"
          letters[i] = "b"
        else
          if consonants.include? (letters[i].next)
            letters[i] = letters[i].next
          else
            letters[i] = letters[i].next.next
          end
        end
      else
        if letters[i] == "u"
          letters[i] = "a"
        else
          letters[i].next
        end
      end
      index += 1
    end
    letters
end

p transform_name(letters)
