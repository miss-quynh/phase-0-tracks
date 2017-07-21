def encrypt(password)
  index = 0
    while index < password.length
      password[index] = password[index].next!
      index += 1
    end
    p password
  end

# encrypt("zed")


def decrypt(encrypted_password)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  letter_place = 0
    while letter_place < encrypted_password.length
        encrypted_password[letter_place] = alphabet[alphabet.index(encrypted_password[letter_place]) - 1]
        letter_place += 1
    end
    p encrypted_password
  end

# decrypt("afe")

# decrypt(encrypt("swordfish"))


valid_answer = false

until valid_answer

  puts "Would you like to decrypt or encrypt a password?"

  answer = gets.chomp

  if answer == "encrypt"
    puts "Please choose a password."
    valid_answer = true
  elsif answer == "decrypt"
    puts "Please choose a password."
    valid_answer = true
  else
    puts "I don't understand. Please type either 'encrypt' or 'decrypt.'"
  end
end

password_input = gets.chomp

if answer == "encrypt"
  encrypt(password_input)
else
  decrypt(password_input)
end