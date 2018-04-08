require 'pry'
class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(anagrams)
    anagrams.find_all { |test_word|
      test_word.split("").sort == word.split("").sort
    }
  end

end
