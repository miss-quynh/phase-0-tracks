# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + "!!!" + " :)"
#   end
# end


# puts Shout.yell_angrily("OMFG")
# puts Shout.yelling_happily("YAAY")




# Release 3 -------------------

module Shout
  def shout_loudly(word_1, word_2)
    puts "We are team #{word_1}!"
    puts "Let's go #{word_1}! Beat #{word_2}!"
  end
end

class Warriors
  include Shout
end

class Lakers
  include Shout
end

warriors = Warriors.new
warriors.shout_loudly("Warriors", "Lakers")

lakers = Lakers.new
lakers.shout_loudly("Lakers", "Warriors")