class Anagram 
    attr_accessor :word, :letters 
    def initialize word
        @word = word
        @letters = word.chars.sort
        
    end

    def match array
        result = []
        array.each do |word|
            if word.chars.sort == letters
                result.push word
            end
        end
        result
    end

end

x = Anagram.new('listen')
puts x.match((%w[enlists google inlets banana]))