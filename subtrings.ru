def substrings(string, dictionary)
    words = string.downcase.split(" ")

    words.reduce(Hash.new(0)) do |count, word|
        dictionary.map do |dict_word|
            count[dict_word] += 1 if word.match?(dict_word)
        end
        count
    end
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)