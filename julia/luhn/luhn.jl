value(digit) = digit -'0'
double(digit) = digit < 9 ? digit : digit - 9

function luhn(cardNumber)
	digits = filter(!isspace, cardNumber) |> reverse
	length(digits) > 1 && all([isnumeric(d) for d in digits]) || return false
	even = sum(double(value(d) * 2) for d in digits[2:2:end])
	odd =sum(value(d) for d in digits[1:2:end])
	(even + odd) % 10 == 0
end
