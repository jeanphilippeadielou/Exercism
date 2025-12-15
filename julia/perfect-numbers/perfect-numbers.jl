function sum_of_factors(number)
	(number > 0) || # test positivity
	(number == 0 && throw(DomainError(number, "number cannot be zero")) || # number is zero
	throw(DomainError(number, "number cannot be negative"))) # number provided is negative
	number > 1 ? sum( x -> (number % x == 0 ? x : 0), 1:div(number,2)) : 0 # sum of aliquot
end
isperfect(number) = sum_of_factors(number) == number # number equal to its aliquot sum
isabundant(number) = sum_of_factors(number) > number # number smaller than its aliquot sum
isdeficient(number) = sum_of_factors(number) < number # number bigger than its aliquot sum
