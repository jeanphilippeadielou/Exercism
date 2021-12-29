"""
    ispangram(input)

Return `true` if `input` contains every alphabetic character (case insensitive).

"""
function ispangram(input)
	return length(setdiff!(Set('a':'z'), Set(lowercase(input)))) == 0
end

