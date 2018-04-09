# Your code goes here!
class Anagram

  def initialize(word)
    @word = word
  end

  def match(anagram_array)
    anagram_array.select {|anagram|
      anagram_letters = anagram.split("")
      word_letters = @word.split("")
      anagram_letters = anagram_letters.sort
      word_letters = word_letters.sort
      if word_letters == anagram_letters
        anagram
      end
    }
  end

end
