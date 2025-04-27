"""Calculate the number of grains on square `square`."""
function on_square(square)
	if square > 0 && square <= 64 
		return (Int128(2) ^ (square - 1))
	else
		throw(DomainError(square, "The square number is not within the limits of the board"))
	end
end

"""Calculate the total number of grains after square `square`."""
function total_after(square)
	if square > 0 && square <= 64 
		return sum(on_square(s) for s=1:square)
	else
		throw(DomainError(square, "The square number is not within the limits of the board"))
	end
	total
end
