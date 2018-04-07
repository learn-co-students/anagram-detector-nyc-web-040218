class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(words_to_match)
    words_to_match.select {|new_word| sort_word(new_word) == sort_word(word)}
  end

  def sort_word(word)
    word.split('').sort.join('')
  end

end
