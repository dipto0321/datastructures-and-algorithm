class Node
  attr_accessor :next
  attr_reader   :value
  def initialize(value)
    @value = value
    @next  = nil
  end

  def to_s
    "Node with value: #{@value}"
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

  # Insert At the front of the linked list
  def unshift(data)
    node = Node.new(data)
    node.next = @head
    @head = node
  end

  # Insert after given data of the linked list
  def insert_after(prev_data, data)
    node = Node.new(data)
    temp = @head
    if temp.nil?
      puts 'List is empty. Use append or unshift for insertion'
    else
      temp = temp.next until temp.value == prev_data
      node.next = temp.next
      temp.next = node
    end
  end

  # All deletion methods
  # Delete at last
  def pop
    if @head.nil?
      puts 'Empty list'
    else
      temp = @head
      previous_node = nil
      if temp.next.nil?
        shift
      else
        while temp.next
          previous_node = temp
          temp = temp.next
        end
        temp = previous_node
        temp.next = nil
      end
    end
  end

  # Delete at first
  def shift
    if @head.nil?
      puts 'Empty list'
    else
      @head = @head.next
    end
  end

  # delete a data from
  def delete_value(data)
    temp = @head
    previous_node = nil
    if @head.nil?
      puts 'Empty list'
    else
      until temp.value == data
        previous_node = temp
        temp = temp.next
      end
      # if key was not present in linked list
      if temp.nil?
        puts 'No data found!'
        return
      end
      if previous_node.nil?
        shift
      else
        previous_node.next = temp.next
      end
    end
  end

  # Show all data
  def list_show
    temp = @head
    while temp
      puts temp.value
      temp = temp.next
    end
  end

  # Miscellaneous Methods
  def min
    temp = @head
    @min = temp.value
    while temp
      @min = temp.value if @min > temp.value
      temp = temp.next
    end
    @min
  end
end

def do_stuff(ar)
  stack = LinkedList.new
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
