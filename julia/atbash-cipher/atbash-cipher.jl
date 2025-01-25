function encode(input)
	# create a list with the encoded characters
	encoded = Char[]
	for c in lowercase(input)
		if isletter(c) 
			push!(encoded, 'z' - c + 'a')
		elseif isdigit(c)
			push!(encoded, c)
		end
	end
	
	# concatenate the character list into a string
	return join([join(x) for x in Iterators.partition(encoded, 5)], " ") 
end

function decode(input)
	return join(split(encode(input)))
end

