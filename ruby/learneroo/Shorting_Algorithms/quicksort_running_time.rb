class InsertionSort
  attr_reader :count
  def initialize
    @count = 0
  end
  def insertion(ar)
    1.upto(ar.size - 1) do |i|
      element = ar[i]
      j = i
      while j > 0 && ar[j - 1] > element
        @count += 1
        ar[j] = ar[j - 1]
        j -= 1
      end
      ar[j] = element
    end
  end
end

class Quicksort
  attr_reader :count
  def initialize
    @count = 0
  end
  def partition(ar, low, high)
    pivot = ar[high]
    i = low - 1
    j = low
    while j <= high - 1
      if ar[j] <= pivot
        i += 1
        ar[i], ar[j] = ar[j], ar[i]
        @count += 1
      end
      j += 1
    end
    ar[i + 1], ar[high] = ar[high], ar[i + 1]
    @count += 1
    i + 1
  end

  def quicksort(ar, low, high)
    if low < high
      pi = partition(ar, low, high)
      quicksort(ar, low, pi - 1)
      quicksort(ar, pi + 1, high)
    end
  end
end

def do_stuff(ar)
  insertion = InsertionSort.new
  insertion.insertion(ar.dup)
  quicksort = Quicksort.new
  quicksort.quicksort(ar, 0, ar.size - 1)
  puts (insertion.count - quicksort.count).abs
end

inputs = [[1, 3, 9, 8, 2, 7, 5],[10, 9, 8, 7, 6, 5, 4, 3, 2, 1]]

inputs.each { |ar| do_stuff(ar) }
