class Anagram
  def initialize(word)
    @word = word
  end

  def find_match(word)
    letters = @word.split("")

    word.split("").each do |char|
      if letters.index(char) == nil
        return false
      end
    end
  end

  def match(words)
    words = words.reject { |word| word.length != @word.length}

    if words.length == 0
      return []
    end

    anagrams = []

    words.each do |word|
      if find_match(word)
        anagrams << word
      end
    end

    anagrams
  end

  def find_match(word)
    chars = word.split("")

    @word.split("").each do |char|
      if chars.index(char) == nil
        return false
      end
    end

    true
  end
end
