def proteins(strand):
    sequence = [strand[i:i+3] for i in range (0, len(strand), 3)]
    dict = {'AUG':'Methionine', 'UUU':'Phenylalanine', 'UUC':'Phenylalanine', 'UUA':'Leucine','UUG':'Leucine', 'UCU':'Serine','UCC':'Serine','UCA':'Serine','UCG':'Serine', 'UAU':'Tyrosine','UAC':'Tyrosine','UGU':'Cysteine', 'UGC':'Cysteine', 'UGG':'Tryptophan'}
    Stop = {'UAA', 'UAG', 'UGA'}
    protein = []
    for e in sequence: 
        if e not in Stop:
           protein.append(dict[e])
        else:
           break
    return protein

        
