def to_rna(dna_strand):
    rna_strand = dna_strand.replace("G", "c") # guanine replacement
    rna_strand = rna_strand.replace("C", "g") # cytosine replacement
    rna_strand = rna_strand.replace("T", "a") # thymine replacement
    rna_strand = rna_strand.replace("A", "u") # adenine replacement
    return rna_strand.upper() # return the uppercased rna translated strand
