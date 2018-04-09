# Your code goes here!
class Anagram
    attr_accessor :string

    def initialize(string)
        @string = string
    end

    def match(test_array)
        matches = []
        test_array.map do |word|
            if string.length != word.length
                next
            elsif string.chars.sort == word.chars.sort
                matches.push(word)
            end
        end
        matches
    end
end