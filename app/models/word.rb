class Word < ActiveRecord::Base
  # Remember to create a migration!

  def self.anagrams(arg)
    group = []
    Word.all.each do |obj|
      array1 = obj.word.chomp.downcase.split("")
      array2 = arg.downcase.split("")
      if array1.sort == array2.sort
        group << obj.word
      end
    end
    group
  end

end


# def anagrams_for(word, dictionary)
#   anagrams = []
#   dictionary.each {|word2| anagrams << word2 if is_anagram?(word, word2)}
#   anagrams
# end

# def is_anagram?(word1, word2)
#   array1 = word1.downcase.split("")
#   array2 = word2.downcase.split("")
#   array1.sort == array2.sort
# end