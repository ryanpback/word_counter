class Fixnum
  define_method(:word_count) do |word_to_count|
    count_word = self.scan(/#{word_to_count}/).length
  end
  count_word
end








# count_words = {'number_of_words' => 0, 'sentence_array' => self.downcase().split(" ")}
#
# count_words['sentence_array'].each() do |word|
#   if word.match(/#{word_to_count}/)
#     count_words['number_of_words']+= 1
#   end
# end
# count_words.fetch('number_of_words')
