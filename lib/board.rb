require 'cell'
class Board
    attr_reader :grids
    def initialize(params = {})
        @grids = params.fetch(:grids,default_rows_columns)
    end
    
    private
    
    #default grid
    def default_rows_columns
        cell = 3
        [[cell,cell,cell],[cell,cell,cell],[cell,cell,cell]]
    end
    def get_cell(x,y)
        grid[y][x]
    end
end