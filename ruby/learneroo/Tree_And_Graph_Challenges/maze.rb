# Dipto's solution
# Need help from Ryan's
# Class cell
class Cell
  attr_reader :data
  attr_accessor :right, :down, :coords
  def initialize(data = nil)
    @data = data
    @right = nil
    @down = nil
    @coords = []
  end
end

# Method to create arrays of cells:
def create_graph(num_grid)
  cell_grid = []

  num_grid.each_with_index do |row, y|
    cells = []
    # Create each cell and include coords
    row.each_with_index do |num, x|
      cell = Cell.new(num)
      cell.coords = [x, y]
      cells.push(cell)
    end
    cell_grid.push(cells)
  end

  # Put each cell's right and down neighbors
  cell_grid.each_with_index do |cell_row, y|
    cell_row.each_with_index do |cell, x|
      x != cell_row.length - 1 ? cell.right = cell_grid[y][x + 1] : nil
      y != cell_grid.length - 1 ? cell.down = cell_grid[y + 1][x] : nil
    end
  end
  # return the cell_grid
  cell_grid
end

# Find goal method
def find_goal(goal, start, path = [start.coords])
  return false if start.data == 1
  return path if start.data == goal

  go_right = start.right.nil? ? false : find_goal(goal, start.right, path + [start.right.coords])
  go_down = start.down.nil? ? false : find_goal(goal, start.down, path + [start.down.coords])
  return go_right if go_right

  go_down
end

def do_stuff(grid)
  goal = 9
  cell_grid = create_graph(grid)
  result = ''
  path = find_goal(goal, cell_grid[0][0])
  path.each { |coord| result += " #{coord}" }
  print result
  puts "\n"
end
