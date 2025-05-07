
function conv(n, o, f, t)
	if div(n, 5) == 1
		n == 9 ? roman = string(o, t) : roman = string(f, o^(n % 5))
	elseif n > 0
		n == 4 ? roman = string(o, f) : roman = string(o^(n % 5))
	else
		return ""
	end
	roman
end

function to_roman(n)
	n > 0 || error("non-positive numeral")
	string(conv(div(n, 1000), "M", "", ""), 
	       conv(div(n % 1000, 100), "C", "D", "M"),
	       conv(div(n % 100, 10), "X", "L", "C"),
	       conv((n % 10) , "I", "V", "X"))  	
end
