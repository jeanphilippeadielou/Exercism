function create_inventory(items)
	# Return a dictionary of amount of occurences o as values 
	# for every unique item i in a given list of items as keys.	
	Dict(i => count([o == i for o in items]) for i in unique(items))	
end

function add_items(inventory, items)
	# Merge the inventory with the items provided
	# add values of keys found in both dictionaries
	mergewith(+, inventory, create_inventory(items))
end

function decrement_items(inventory, items)
	
	new_inv = create_inventory(items)

	# filter out items not in the inventory
	for u in unique(items)
		if !haskey(inventory, u)
			remove_item(new_inv, u)
		end
	end
	# Merge the inventory with items and substract same keys count
	new_inv = mergewith(-, inventory, new_inv)
	
	# Return a Dict with negative values set to zero
	Dict(k => max(new_inv[k], 0) for k in keys(new_inv))
end

function remove_item(inventory, item)
	# delete the mapping for the given item	
	delete!(inventory, item)
end

function list_inventory(inventory)
	# Delete the mapping if the inventory count is zero	
	for i in keys(inventory)
		if inventory[i] == 0
			remove_item(inventory, i)
		end
	end
	# Return a vector of Pairs for the remaining mappings in the inventory
	sort([k => inventory[k] for k in keys(inventory)]) 
end
