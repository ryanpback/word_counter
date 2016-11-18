class String
  define_method(:word_count) do |word_to_count, mode|
    mode == "exact" ? count_word = self.downcase().scan(/\b(#{word_to_count})\b/).length : count_word = self.downcase().scan(/#{word_to_count}/).length
  end
end
