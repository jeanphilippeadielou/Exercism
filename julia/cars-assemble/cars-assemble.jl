function success_rate(speed)
	if speed == 0
		0.00
	elseif speed <= 4
		1.00
	elseif speed <= 8
		0.90
	elseif speed == 9
		0.80
	else speed == 10
		0.77
	end 
end

function production_rate_per_hour(speed)
	Float32(speed * success_rate(speed) * 221)
end

function working_items_per_minute(speed)
	Int(div(production_rate_per_hour(speed), 60)) 
end
