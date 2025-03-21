# @param {Integer[][]} grid
# @return {Integer}
def island_perimeter(grid)
  result = 0

  grid.each_with_index do |row, i|
    row.each_with_index do |el, j|
      if grid[i][j] == 1
        result += 4

        if i > 0 && grid[i -1][j] == 1
          result -= 2
        end

        if j > 0 && grid[i][j - 1] == 1
          result -= 2
        end
      end
    end
  end

  puts result
end

grid = [[0,1,0,0],[1,1,1,0],[0,1,0,0],[1,1,0,0]]
island_perimeter(grid)