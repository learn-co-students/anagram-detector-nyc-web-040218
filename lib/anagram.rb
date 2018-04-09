class Anagram
  attr_accessor :anagram
  
  def initialize(anagram)
    @anagram = anagram
  end

  def match(array)
    array.select do |element|
      element.split("").sort == anagram.split("").sort
    end
  end
end
