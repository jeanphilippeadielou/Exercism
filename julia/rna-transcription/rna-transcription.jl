function to_rna(dna)
	rna=[]
	if issubset(Set(dna), Set(['G', 'C', 'T', 'A']))
		for j=1:length(dna)
			if dna[j]=='G'
				push!(rna, 'C')
			elseif dna[j]=='C'
				push!(rna, 'G')
			elseif dna[j]=='T'
				push!(rna, 'A')
			elseif dna[j]=='A'
				push!(rna, 'U')
			end
		end
		join(rna)
	else
		throw(ErrorException("Unexpected segment"))
	end
end

