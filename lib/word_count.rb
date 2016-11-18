class String
  define_method(:word_count) do |word_to_count|
    number_of_words = 0
    sentence_array = self.downcase().split(" ")

    sentence_array.each() do |word|
      if word.match(/#{word_to_count}/)
        number_of_words+= 1
      end
    end
    number_of_words
  end
end
