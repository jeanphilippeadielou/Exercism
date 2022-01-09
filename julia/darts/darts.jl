function score(x, y)
	rad = (x^2+y^2)^0.5
	if rad <=1
		return 10
	elseif rad<=5
		return 5
	elseif rad<=10
		return 1
	else
		return 0
	end
end
