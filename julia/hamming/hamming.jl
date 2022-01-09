"Your optional docstring here"
function distance(a, b)
	if length(a) == length(b)
		count = 0
		for j =1:length(a)
			if a[j] != b[j]
				count+=1
			end
		end
		return count
	else
		throw(ArgumentError("Lengths are different"))
	end
end
