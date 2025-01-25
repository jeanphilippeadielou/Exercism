function annotate(grid)
	h = length(grid)
	w = sqrt(length(grid))
	minecount = zeros(h, w)
	for i in grid
		if i == "."
		   minecount[i, j] += count([lines[i-1][j] == "*",
              				     lines[i-1][j-1] =="*",
					     lines[i-1][j+1] == "*",
					     lines[i][j-1] == "*",
					     lines[i][j+1] == "*",
					     lines[i+1][j-1] == "*",
					     lines[i+1][j] == "*",
		      			     lines[i+1][j+1] == "*"])
		else
			continue
		end
	end
	replace!(minecount, 0 =>  ".")
end
