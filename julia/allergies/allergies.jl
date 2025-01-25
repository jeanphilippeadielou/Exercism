
allergies = ["eggs",  
             "peanuts",
             "shellfish",
             "strawberries",
             "tomatoes",
             "chocolate",
             "pollen",
	     "cats"]

function allergic_to(score, allergen)
	in(allergen, allergy_list(score))
end
function allergy_list(score)
	mask = digits(Bool, mod(score, 256); base=2, pad=8)
	return Set(allergies[mask])
end
