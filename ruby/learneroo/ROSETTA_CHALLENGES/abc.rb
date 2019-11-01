def do_stuff(word)
  blocks = %w[bo xk dq cp na gt re tg qd fs jw hu vi an ob er fs ly pc zm]
           .map { |el| el.split(//) }
  check_word_len = word.size
  word.downcase.each_char do |char|
    blocks.each_with_index do |block, index|
      next unless block.include? char

      check_word_len -= 1
      blocks.delete_at(index)
      break
    end
  end
  check_word_len.zero?
end

inputs = %w[A BBB BARK BOOK TREAT COMMON SQUAD CONFUSE]

inputs.each { |word| puts do_stuff(word) }
