# Design a Word-Guessing Game

# Player 1(provides a word)
  # Ask Player 1 to enter a word and need to add a note that it cannot be a hyphenated word (for simplicity sake)
  # Receive input from Player 1

# Player 2(guesses the word)
 # Convert the letters in a given word provided by Player 1 into "_" symbols
 # Begin the guessing game with the appropriate number of "_" symbols, depending on the length of the word provided by Player 1
 # Ask Player 2 to guess the first letter
    # If guessed letter is part of the word, then replace "_" symbol with the appropriate letter
    # Continue until Player 2 guesses all of the correct letters of the word
    # Print message "Please choose a different letter" if guessed wrong letter
# Once guessed the correct word, print "Congratulations! You did it!"



# BUSINESS LOGIC

class WordGame
  attr_accessor :guesses
  attr_accessor :guess_count
  attr_accessor :word_characters
  attr_accessor :is_over

  def initialize
    @guesses = []
    @guess_count = 0
    @word_characters = []
    @is_over = false
  end

  def incorrect_guesses
    @guesses - @word_characters
  end

  def guess(character_guess)
    @guesses << character_guess
    indices = []
    @word_characters.each_with_index do |character, index|
      indices << index if character == character_guess
    end
    indices
  end

  def correct_word
    won = true
    if (@word_characters - @guesses).empty
      @is_over = true
    else
      won = false
    end
  end
end


# USER INTERFACE

puts "Welcome to the Word-Guessing Game!"
game = WordGame.new

puts "Player 1"
puts "Enter a word (Please do not use a hyphenated word): "
  print "> "
  secret_word = gets.chomp.upcase.strip
  game.word_characters = secret_word.chars.to_a
    game.word_characters.each do |x|
      print "_ "
    end

puts ""


alphabet = "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K",
"L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"



puts "Player 2"
puts "Guess a letter: "
  print "> "

while game.guess_count < 10 || game.word_characters.length == 0
  character_guess = gets.chomp.upcase
  if game.guess
    puts "You guessed one letter!"
  end
  if @is_over = true
      puts "CONGRATULATIONS! You did it!"
      break
  else
    puts "Sorry! The word does not contain that letter."
    game.guess_count += 1
    puts "You have " + (10 - game.guess_count).to_s + " left before you have to take the walk of shame."
    puts "Please choose a different letter."
    print "> "
  end
end


