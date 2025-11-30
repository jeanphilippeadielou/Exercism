function sum_of_factors(number)
	i = 1
	sum_of_factors = 0
	if number == 0 # number provide is equal to zero
		throw(DomainError(number,"number is not natural"))
	end
	if number < 0 # number provided is negative
		throw(DomainError(number, "number cannot be negative"))
	end
	while i <= number / 2 # smaller than half the number
		if number % i == 0 # is a factor of the number
			sum_of_factors += i # add to aliquot sum
		end
		i += 1 # increment
	end
	return sum_of_factors
end
function isperfect(number) # number equal to its aliquot sum
	return sum_of_factors(number) == number
end
function isabundant(number) # number smaller than its aliquot sum
	return sum_of_factors(number) > number
end
function isdeficient(number) # number bigger than its aliquot sum
	return sum_of_factors(number) < number
end
