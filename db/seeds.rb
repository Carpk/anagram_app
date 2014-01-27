

@word_file = open'/usr/share/dict/words'



@word_file.each do |word|
  Word.create(word:word)
end

