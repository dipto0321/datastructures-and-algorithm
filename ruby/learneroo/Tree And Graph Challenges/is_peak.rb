class Cell
  attr_accessor :data, :surroundings, :ruled_by
  def initialize(data)
    @data = data
    @surroundings = { t: 0, r: 0, b: 0, l: 0 }
    @ruled_by = 0
  end

  def show
    puts ''
    puts  "Cell: #{@data}"
    print "Surroundings: #{@surroundings}\n"
    puts  "Ruled_by: #{@ruled_by}"
    puts ''
  end
end

class GridsInfo
  attr_accessor :cell_infos, :peaks, :areas
  def initialize
    @peaks = []
    @cell_infos = []
    @areas = {}
  end

  def show
    puts ''
    print "Peaks: #{@peaks}"
    @cell_infos.each(&:show)
    print "Areas: #{@areas}"
    puts ''
  end
end

def ruling_party(cell_data, candidate)
  cell_data < candidate ? candidate : 0
end

def generate_grid_info(grid)
  grid_info = GridsInfo.new

  grid.each_with_index do |items, row|
    items.each_with_index do |_item, col|
      cell = Cell.new(grid[row][col])
      cell.surroundings[:t] = row - 1 < 0 ? 0 : grid[row - 1][col]
      cell.surroundings[:r] = col + 1 > grid.size - 1 ? 0 : grid[row][col + 1]
      cell.surroundings[:b] = row + 1 > items.size - 1 ? 0 : grid[row + 1][col]
      cell.surroundings[:l] = col - 1 < 0 ? 0 : grid[row][col - 1]
      cell.ruled_by = ruling_party(cell.data, cell.surroundings.values.max)
      grid_info.cell_infos.push(cell)
      grid_info.peaks.push(cell.data) if cell.ruled_by.zero?
    end
  end
  grid_info.peaks.each { |peak| grid_info.areas[peak.to_s] = [] }
  grid_info
end

def do_stuff(grid)
  grid_information = generate_grid_info(grid)
  grid_information.cell_infos.each do |cell|
    grid_information.areas.keys.each do |key|
      updated = false
      if (cell.ruled_by.zero? && grid_information.areas[key].empty?) || (!grid_information.areas[key].empty? && grid_information.areas[key].include?(cell.ruled_by))
        grid_information.areas[key].push(cell.data)
        updated = true
      end
      break if updated
    end
  end
  res = grid_information.areas.values.map(&:count)
  # puts [res.min, res.max].join(' ')
  grid_information.show
end

inputs = [[9, 8, 5], [5, 6, 3], [8, 4, 1]]

do_stuff(inputs)
