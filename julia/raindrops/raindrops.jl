function raindrops(number)
	pot_drop =[]
	if number % 3 == 0
		append!(pot_drop, "Pling")
	end
	if number % 5 == 0
		append!(pot_drop, "Plang")
	end
	if number % 7 == 0
		append!(pot_drop, "Plong")
	end
	if length(pot_drop) > 0
		return join(pot_drop)
	else
		return string(number)
	end
end
