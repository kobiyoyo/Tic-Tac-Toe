class Board
  attr_reader :grids

  def initialize(params = {})
    @grids = params.fetch(:grids, default_rows_columns)
  end

  def get_cell(x, y)
    grids[y][x]
  end

  def set_cell(x, y, value)
    get_cell(x, y).value = value
  end

  def game_over
    return :winner if winner?
    return :draw if draw?
    false
  end

  def formatted_grid
    grids.each do |row|
      puts row.map { |cell| cell.value.empty? ? "_" : cell.value }.join(" ")
    end
  end

  private

  #default grid
  def default_rows_columns
    cell = Cell.new
    Array.new(3) { Array.new(3) { Cell.new } }
  end

  def draw?
    grids.flatten.map { |cell| cell.value }.none_empty?
  end

  def winner?
    winning_positions.each do |x|
      next if winning_position_values(x).all_empty?
      return true if winning_position_values(x).all_same?
    end
    false
  end

  def winning_position_values(winning_position)
    winning_position.map { |cell| cell.value }
  end

  def winning_positions
    grids + #rows
    grids.transpose + # columns
    diagonals # two diagonals
  end

  def diagonals
    [
          [get_cell(0, 0), get_cell(1, 1), get_cell(2, 2)],
          [get_cell(0, 2), get_cell(1, 1), get_cell(2, 0)],
        ]
  end
end
