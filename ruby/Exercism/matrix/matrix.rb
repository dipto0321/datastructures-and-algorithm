# Main Matrix class
class Matrix
  attr_reader :rows, :columns
  def initialize(input)
    @rows = matrix(input)
    @columns = @rows.transpose
  end

  private

  def matrix(input)
    input.split("\n").map { |element| element.split(' ').map(&:to_i) }
  end
end
