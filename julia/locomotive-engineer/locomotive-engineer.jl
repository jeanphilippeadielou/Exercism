function get_vector_of_wagons(wag_ids...)
	[wag_ids...] # wagon ids are slurped; the collection is packed in a vector
end

function fix_vector_of_wagons(each_wagons_id, missing_wagons)
	w_one, w_two, loco, rest... = each_wagons_id # Splat 2 wagons from loco and the rest of the train 
	append!([loco], missing_wagons, rest, [w_one, w_two]) # Reordered wagons 
end

function add_missing_stops(route, stops...)
	dest(stops...) = [s.second for s in stops] # return destination for every slurped stop Pair
	merge(route, Dict("stops" => dest(stops...))) # Merge the mapping of destination vector for stops to route
end

function extend_route_information(route; more_route_information...)
	merge(route, more_route_information) # Merge slurped more_route_information into route Dict 
end
