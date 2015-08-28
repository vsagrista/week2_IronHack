class Neighbors
attr_accessor :grid

@@grid = 
	 [[1,1,0,0,1,0,0,0,1],   	#0
	  [0,1,0,0,1,0,0,0,0],		#1 
	  [0,1,1,0,1,0,0,0,1],		#2
	  [0,1,0,0,1,0,0,0,1],		#3
	  [0,1,0,0,1,0,0,0,1],		#4
	  [0,1,0,1,1,0,0,0,0],		#5
	  [0,1,0,0,1,0,0,0,1],		#6
	  [0,1,0,0,1,0,0,0,1],		#7
	  [1,1,0,0,1,0,0,0,1]]		#8    
	
	def initialize	
		@neighbors_alive = 0	
	end

	def check_neighbors(y,x)
		if y > 0 && y <=8
			neighborNW = @@grid[y-1][x-1]
			neighborN =  @@grid[y-1][x]
			neighborNE = @@grid[y-1][x+1]
		end
		neighborE =  @@grid[y][x+1]
		if y < 8 && y >=0
			neighborSE = @@grid[y+1][x+1]
			neighborS =  @@grid[y+1][x]
			neighborSW = @@grid[y+1][x-1]
		end	
		neighborW =  @@grid[y][x-1]
		
			if y > 0 && y <=8 && x > 0 && neighborNW == 1 
				@neighbors_alive += 1
			end
			if y > 0 && y <=8 && neighborN == 1
				@neighbors_alive += 1
			end
			if y > 0 && y <=8 && neighborNE == 1
				@neighbors_alive += 1
			end
			if x <= 8 && neighborE == 1
				@neighbors_alive += 1
			end
     
			if y < 8 && y >=0 &&  x >= 0 && neighborSE == 1
				@neighbors_alive += 1
			end
			if y < 8 && y >=0 && neighborS == 1
				@neighbors_alive += 1
			end
			if y < 8 && y >=0 && x > 0 && neighborSW == 1
				@neighbors_alive += 1
			end

			if x > 0 && neighborW == 1
				@neighbors_alive += 1
			end

			return @neighbors_alive	
	end
end





