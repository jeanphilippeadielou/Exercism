function time_to_mix_juice(juice)
	# Time required for the preparation of each juice
	juice == "Pure Strawberry Joy" ? 0.5 :
	juice == "Tropical Island" ? 3.0 :
	juice == "All or Nothing" ? 5.0 :
	juice == "Energizer" || juice == "Green Garden" ? 1.5 : 2.5
end

function wedges_from_lime(size)
		size == "small" ? wedges = 6 : # Is a small lime? yields 6 wedges if so 
		size == "medium" ? wedges = 8 : # Is a small lime? yields 8 wedges if so 
		size == "large" ? wedges = 10 : # Is a large lime? yields 10 wedges if so 
		wedges
end

function limes_to_cut(needed, limes)
	n_limes = 0
	lime = 1
	while needed > 0 && !isempty(limes) 
		# We've cut the needed amount of wedges?
		needed-=wedges_from_lime(limes[1]) # Added wedges. Our needs decrease
		deleteat!(limes, 1) # Lime is cut. Onto the next one !!
		n_limes+=1 # Just cut 1 more lime
	end
	n_limes
end

function order_times(orders)
	[time_to_mix_juice(juice) for juice in orders] # vector or time per juice
end

function remaining_orders(time_left, orders)
	while time_left > 0 && !isempty(orders) # Time and orders left
		time_left -= time_to_mix_juice(orders[1]) # time running out
		deleteat!(orders, 1) # One less order to complete
	end
	orders
end
