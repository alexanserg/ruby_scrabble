
class Scrabble
  def initialize(word)
    @letters = word.downcase.split("")
    @score = 0
    @score_one = ["a", "e", "i", "o", "u", "l", "n", "r", "s", "t"]
    @score_two = ["d", "g"]
    @score_three = ["b", "c", "m", "p"]
    @score_four = ["f", "h", "v", "w", "y"]
    @score_five = "k"
    @score_eight = ["j", "x"]
    @score_ten = ["q", "z"]
  end
  def word_score

    @letters.each do |letter|
      if @score_one.include?(letter) then @score += 1 end
      if @score_two.include?(letter) then @score += 2 end
      if @score_three.include?(letter) then @score += 3 end
      if @score_four.include?(letter) then @score += 4 end
      if @score_five.include?(letter) then @score += 5 end
      if @score_eight.include?(letter) then @score += 8 end
      if @score_ten.include?(letter) then @score += 10 end
    end
    @score
  end
end

dog = Scrabble.new("my favorite dog is fido")
p dog.word_score
