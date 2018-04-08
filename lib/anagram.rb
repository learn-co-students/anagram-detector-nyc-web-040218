class Anagram
    attr_accessor :word
    def initialize(word)
        @word = word
        @matches = []
    end

    def match(phrase)
        phrase.map do |words|
            if words.split("").sort == @word.split("").sort
                @matches << words
            end
        end
        @matches
    end
end