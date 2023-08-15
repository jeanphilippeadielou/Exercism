function transform(input::AbstractDict)
output = Dict()
	for (point, letters) in input
		for letter in letters
			output[lowercase(letter)] = point
		end
	end
	output
end

