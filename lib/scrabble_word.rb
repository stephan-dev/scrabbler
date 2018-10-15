
require "rspec"
#require "pry"

class ScrabbleWord

  attr_accessor :word

  def initialize(word)
  	@word = word.downcase 
  	return @word
  end

  def score

  	i = 0
  	score = 0

  	values = Hash.new
  	values = {"a" => 1, "b" => 3, "c" => 3, "d" => 2, "e" => 1, "f" => 4, "g" => 2, "h" => 4, "i" => 1, "j" => 8, "k" => 5, "l" => 1, "m" => 3, "n" => 1, "o" => 1, "p" => 3, "q" => 10, "r" => 1, "s" => 1, "t" => 1, "u" => 1, "v" => 4, "w" => 4, "x" => 8, "y" => 4, "z" => 10}

  	while i < @word.length
  		score += values["#{@word[i]}"]
  		i += 1
    end

 	return score

  end


  def multiplier_score(level)
  	score = 0
  	newscore = 0
  	if level == 2
  	  newscore = score() * 2
  	elsif level == 3
  	  newscore = score() * 3
  	else
  	  return score()
  	end
  end

end

#binding.pry

puts "end of file"