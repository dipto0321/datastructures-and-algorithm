# Dipto's Solution
# Using Ryan's solution as a helper
# Node class connected to up down left right
class Cell
  attr_reader :data
  attr_accessor :surroundings, :ruled_by
  def initialize(data = nil)
    @data = data
    @surroundings = [] # [t,r,b,l]
    @ruled_by = nil
  end
end

# Method to create graph
def create_graph(grid)
  cell_grid = []
  grid.each do |row|
    cells = []
    row.each do |element|
      cell = Cell.new(element)
      cells.push(cell)
    end
    cell_grid.push(cells)
  end

  cell_grid.each_with_index do |cell_row, row|
    cell_row.each_with_index do |cell, col|
      row == 0 ? nil : cell.surroundings.push(cell_grid[row-1][col])
      col == cell_row.size - 1 ? nil : cell.surroundings.push(cell_grid[row][col + 1])
      col == 0 ? nil : cell.surroundings.push(cell_grid[row][col - 1])
      row == cell_grid.size - 1 ? nil : cell.surroundings.push(cell_grid[row + 1][col])
    end
  end
  cell_grid
end

# 1. Method to find peaks
def find_peaks(cell_grid)
  peaks = []
  cell_grid.each do |cell_row|
    cell_row.each do |cell|
      peaks.push(cell) if cell.surroundings.all? {|neighbor| cell.data >= neighbor.data}
    end
  end
  peaks
end
# 2. Method to determine which peak a cell belongs to
  def set_belongs_to(peaks_arr, cell)
    return cell if peaks_arr.include?(cell)
    
    max_neighbor_data = cell.surroundings.map {|neighbor| neighbor.data}.max

    max_neighbor = nil
    cell.surroundings.each do |cell|
      max_neighbor = cell if cell.data == max_neighbor_data
    end
    
    return cell if max_neighbor_data <= cell.data
    set_belongs_to(peaks_arr, max_neighbor)
  end

# 3. Method to count cells controlled by each peak

def map_area(cell_grid)
  peaks = find_peaks(create_graph(cell_grid))
  create_graph(cell_grid).map do |cell_row|
    cell_row.map do |cell|
      set_belongs_to(peaks, cell).data
    end
  end
end

# 4. Method to count cells for each area
def count_cells(grid_map)
  areas_hash = {}
  grid_map.each do |arr|
    arr.each {|peak| areas_hash[peak].nil? ? areas_hash[peak] = 1 : areas_hash[peak]+=1}
  end
  [areas_hash.values.min, areas_hash.values.max].join(" ")
end

def do_stuff(grid)
  puts count_cells(map_area(grid))
end


inputs = [[9,8,5],[5,6,3],[8,4,1]]

do_stuff(inputs)
