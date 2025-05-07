exchange_money(budget, exchange_rate) = budget / exchange_rate    

get_change(budget, exchanging_value) = budget - exchanging_value 

get_value_of_bills(denomination, number_of_bills) = denomination * number_of_bills 

get_number_of_bills(amount, denomination) = div(amount, denomination)

get_leftover_of_bills(amount, denomination) = amount % denomination

function exchangeable_value(b, r, s, d)
	Int(div(b/ (r + (r * s/ 100)), d) * d) 
end
