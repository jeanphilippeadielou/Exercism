function combinations_in_cage(sumdigits, cages)
	superSet = set(collect(1:9))
	filter(x -> sum(x) == sumdigits && length(x) == cages, superSet) |> sort
end

function set(dig)
	result = [Int[]]
	for ele in dig, j in eachindex(result)
		push!(result, [result[j] ; ele])
	end
	result
end

function combinations_in_cage(sumdigits, cages, restrictions)
	combinations = combinations_in_cage(sumdigits, cages)
	filter(x -> all(y ->(y ∉ x), restrictions), combinations)
end
