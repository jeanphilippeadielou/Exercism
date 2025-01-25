struct ISBN
	str::String
	function ISBN(str)
	sum = len = 0
		for char in str
			if char == '-'
				continue
			elseif isdigit(char)
				sum += parse(Int, char)*(10-len)
				len += 1
			elseif char == 'X' && len == 9
				sum += 10
				len += 1
			else
				throw(DomainError(str, "Invalid character in ISBN"))
			end
		end
		if mod(sum, 11) != 0 || len != 10
			throw(DomainError(str, "Not an ISBN-10"))
		end
		new(replace(str, r"[^\dX]" => ""))
	end
end
