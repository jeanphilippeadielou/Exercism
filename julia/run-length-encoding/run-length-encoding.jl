using IterTools

function encode(s)
	code = collect(i for i in groupby(x->x[1],collect(s)))
	encoded = []
	for j=1:length(code)
		if length(code[j]) == 1
			append!(encoded, code[j][1])
		elseif length(code[j]) > 1
			append!(encoded, string(length(code[j]))*code[j][1])
		end
	end
	join(encoded)
end

function decode(s)
	cnt = 0
	decoded =[]
	for k=1:length(s)
		if isdigit(s[k]) && isdigit(s[k+1])
			cnt+=(parse(Int, s[k])*10)
		elseif isdigit(s[k]) && (isletter(s[k+1])||isspace(s[k+1]))
			cnt+=parse(Int, s[k])
		elseif isletter(s[k])||isspace(s[k])
			if cnt==0
				append!(decoded, s[k])
			else
				for l=1:cnt
					append!(decoded, s[k])
				end
			end
			cnt = 0
		end
	end
	join(decoded)
end
