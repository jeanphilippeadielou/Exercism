function get_item(stack, position)
	stack[position]    
end

function set_item!(stack, position, replacement_card)
	splice!(stack, position, replacement_card); stack 
end

function insert_item_at_top!(stack, new_card)
	push!(stack, new_card) 
end

function remove_item!(stack, position)
	deleteat!(stack, position) 
end

function remove_item_from_top!(stack)
	deleteat!(stack, length(stack)) 
end

function insert_item_at_bottom!(stack, new_card)
	append!([new_card], stack)
end

function remove_item_at_bottom!(stack)
	deleteat!(stack, 1) 
end

function check_size_of_stack(stack, stack_size)
	length(stack) == stack_size 
end
