def count_word(sentence)
  word_book = {}
  sentence.downcase.split.each do |word|
    if word_book.key?(word)
      word_book[word] += 1
    else
      word_book[word] = 1
    end
  end
  print "\n#{word_book}\n"
end

def remove_puncuation(sentence)
  sentence.gsub(/\W+/, ' ')
end

count_word('Oh what a day what a lovely day')
count_word('oh what a day what a lovely day')
count_word("don't stop believing")
count_word('Oh what a day, what a lovely day!')

count_word(remove_puncuation('Oh what a day, what a lovely day!'))
