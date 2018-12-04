BRACKET_PAIR = {
  '[' => ']',
  '{' => '}',
  '(' => ')'
}.freeze
def do_stuff(text)
  stack = []
  until text.empty?
    if (BRACKET_PAIR.key?(text[0]) &&
       BRACKET_PAIR[text[0]] != stack[-1])
      stack.push(text[0])
    elsif BRACKET_PAIR.key(text[0]) == stack[-1]
      stack.pop
    end
    text[0] = ''
  end
  puts stack.empty?
end

sample = [ '{}(hello)[world]','[({}{}{})([])]','([)]','(hi))(lo)(','()[]([{[[[{{()}}]]]}])[]()','[({}{}{)}([])]','()[]([{[[[{{()}}]]]}][]()','[({}[])[]()[{()]}]','[{([](){}[](){})}]' ]

sample.each { |x| do_stuff(x) }
