function get_coordinate(line)
	_, coord = line # dummy var for treasure & extraction
	coord # raw coordinates
end

function convert_coordinate(coordinate)
	(coordinate[1], coordinate[2]) # first & second char as tuple
end

function compare_records(azara_record, rui_record)
	azara_coord = convert_coordinate(get_coordinate(azara_record)) # extraction & conversion
	_, rui_coord, __ = rui_record # rui's coordinate unpacking 
	azara_coord == rui_coord # comparison
end

function create_record(azara_record, rui_record)
	if compare_records(azara_record, rui_record)
		treasure, coord = azara_record # rec unpacking
		loc, __, quadrant = rui_record # rec unpacking 
		(coord, loc, quadrant, treasure) # combined new rec tuple
	else
		() # empty tuple if false correspondance
	end
end
