function message(msg)
	words = split(strip(msg)) # strip the msg and split words into a vector by ws
	msg_words = words[2:end] # ignore the first word which is the level
	return join(msg_words, " ") # join message words with a whitespace separating
end

function log_level(msg)
	words = split(lstrip(msg)) # left strip the msg and split words into a vector
	lvl = words[1][2:end-2] # In the level string, select level letters only
	return lowercase(lvl) # return lowercase level 
end

function reformat(msg)
	lvl = log_level(msg)
	return message(msg) * " ($(lvl))" # concat msg with lowercase lvl in parent
end
