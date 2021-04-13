def proteins(strand):
    codons = {'AUG' : 'Methionine', 'UUU' : 'Phenylalanine', 'UUC' : 'Phenylalanine', 'UUA' : 'Leucine','UUG' : 'Leucine', 'UCU' : 'Serine','UCC' : 'Serine','UCA' : 'Serine','UCG' : 'Serine', 'UAU' : 'Tyrosine','UAC' : 'Tyrosine','UGU' : 'Cysteine', 'UGC' : 'Cysteine', 'UGG' : 'Tryptophan'}
    stop = {'UAA', 'UAG', 'UGA'}
    protein = []
    for e in range(0, len(strand), 3): 
        if not strand[e:e+3] in stop:
           protein.append(codons[strand[e:e+3]])
        else:
           break
    return protein

        
