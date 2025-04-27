function annotate(grid)
	h = length(grid)
	if h == 0
		return String[]
	end
	w = length(grid[1])
	minecount = 0 
	result = []	
	for i=1:length(grid)
		line = ""
		for j=1:length(grid[i])
			if !isempty(grid) && grid[i][j] == ' '
				mine_suround = [(i-1 > 0) && (j-1 > 0) && (grid[i-1][j-1] == '*'), # [1] top left position
						(i-1 > 0) && (grid[i-1][j] == '*'), # [2] top position
						(i-1 > 0) && (j+1 <= w) && (grid[i-1][j+1] =='*'), # [3] top right position
						(j-1 > 0) && (grid[i][j-1] =='*'), # [8] left position
						(j+1 <= w) && (grid[i][j+1] =='*'), # [4] right position
						(i+1 <= h) && (j-1 > 0) && (grid[i+1][j-1] =='*'), # [7] bottom left position
						(i+1 <= h)  && (grid[i+1][j] =='*'), # [6] bottom position
						(i+1 <= h) && (j+1 <= w) && (grid[i+1][j+1] =='*') # [5] bottom right position
						]
				minecount = count(x -> x == true, mine_suround) 
	
				if minecount!=0
					line *=string(minecount)
				else
					line *= " "
				end
			else
				line *= '*'	
			end
		end
		push!(result, line)
	end
	result
end
