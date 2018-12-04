class Node
  attr_accessor :next
  attr_reader   :value
  def initialize(value)
    @value = value
    @next  = nil
  end
end

class LinkedList
  def initialize
    @head = nil
  end
  # Insert At the end of the linked list
  def push(data)
    node = Node.new(data)
    if @head.nil?
      @head = node
    else
      tail = @head
      tail = tail.next while tail.next
      tail.next = node
    end
  end
  # Delete at last
  def pop
  	rem_data = nil
    if @head.nil?
      puts 'Empty list'
    else
      temp = @head
      previous_node = nil
      if temp.next.nil?
        rem_data = temp.value
        self.shift
      else
        while temp.next
          previous_node = temp
          temp = temp.next
        end
        rem_data = temp.value
        temp = previous_node
        temp.next = nil
      end
    end
    rem_data
  end
  # Delete at first
  def shift
    if @head.nil?
      puts 'Empty list'
    else
      @head = @head.next
    end
  end
end

def do_stuff(ar)
	stack, res = LinkedList.new, ''
	ar.each do |item|
		if item == -1
			res += stack.pop.to_s + ' '
		else
			stack.push(item)
		end
	end
	puts res
end

arr = [3, 5, -1, -1, 2, 7, 11, -1, -1]

do_stuff(arr)