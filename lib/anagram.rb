require 'pry'
class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(anagrams)
    anagrams.select { |test_word|
      test_word.split("").sort == word.split("").sort
    }
  end

end
