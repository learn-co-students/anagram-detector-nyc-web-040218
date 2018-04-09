require "pry"
class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(list)
   list.select do |m_word|
     m_word.split('').sort== @word.split('').sort
   end
 end

end
