function today(birds_per_day)
	birds_per_day[length(birds_per_day)] # retreive the last item in the vector    
end

function increment_todays_count(bpd)
	# Add a vector containing zeros except for a one in the last row
	bpd .+ [c == length(bpd) for (c, b) in enumerate(bpd)]
end

function has_day_without_birds(birds_per_day)
	any([b == 0 for b in birds_per_day]) # return True if any birdcount day equals zero
end

function count_for_first_days(birds_per_day, num_days)
	sum(birds_per_day[1:num_days]) # sum of the birdcount of first num_days
end

function busy_days(birds_per_day) 
	sum(birds_per_day .>= 5) # Sum of days with more than 5 birds
end

function average_per_day(week1, week2)
	(week1 + week2)/2 # sum of the 2 weeks' birdcount divided by 2 
end
