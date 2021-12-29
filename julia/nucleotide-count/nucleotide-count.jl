"""
    count_nucleotides(strand)

The count of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
 
nA, nT, nG, nC = (0,0,0,0)
    for c in strand
        if (c == 'A')
            nA += 1
        elseif (c == 'T')
            nT += 1
        elseif (c == 'G')
            nG += 1
        elseif (c == 'C')
            nC += 1
        else
            throw(DomainError(c))
        end   
    end
    Dict('A' => nA, 'C' => nC, 'G' => nG, 'T' => nT)
end
