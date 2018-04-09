# Your code goes here!
class Anagram

  def initialize(word)
    @word = word
  end

  def match(new_string)
    sorted = @word.chars.sort.join

    alt_string = (new_string).select do |item|
      item.chars.sort.join == sorted
    end


  end
end
