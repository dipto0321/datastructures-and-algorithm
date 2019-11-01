class Stack
  attr_accessor :stack
  def initialize
    @stack = []
  end

  def push(data)
    @stack.push(data)
  end

  def pop
    @stack.pop
  end

  def min
    @stack.min
  end
end

def do_stuff(ar)
  stack = Stack.new
  res = ''
  ar.each do |item|
    if item == -1
      stack.pop
    else
      stack.push(item)
      res += stack.min.to_s + ' ' unless stack.min.nil?
    end
  end
  puts res
end

ar = [3, 5, -1, -1, 7, 2, 11, -1, -1, 9]

do_stuff(ar)
