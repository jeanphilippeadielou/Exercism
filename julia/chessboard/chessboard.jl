function rank_range()
	# returning a range of integers from 1 to 8
	1:8
end

function file_range()
	# returning a range of characters from 'A' to 'H'
	'A':'H'
end

function ranks()
	# return a vector of integers from 1 to 8
	collect(rank_range())
end

function files()
	# return a vector of characters from 'A' to 'H'
	collect(file_range())
end
