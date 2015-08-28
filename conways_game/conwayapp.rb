require_relative "./grid.rb"

class Cell
  def send_to_neighbors(y,x)
  	Neighbors.new.check_neighbors(y,x)
  end 
end


new_cell = Cell.new
new_cell.send_to_neighbors(0,0)






