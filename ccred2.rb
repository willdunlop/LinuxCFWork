
class Words
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  attr_reader :word1, :word2

  def letter_compare

    let = word1.split('')
    let.each do |l|
    puts word2.include? l


  # print word2.include? word1.split.each
    end
  end
end


try = Words.new("bees", "bytes")
try.letter_compare
