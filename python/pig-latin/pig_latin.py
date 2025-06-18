def translate(text):
    phrase = []
    for w in text.split():
        if w[0] == 'y' and w[:2] != "yt":
                w = w + w[:1] # shift 'y' as consonant if first letter {R4} 
                w = w.lstrip(text[:1])
        while (w[0] not in "aeiou" and
            w[:2] != "xr" and
            w[:2] != "yt"): # store Rule 1 in a bool variable {R1}
            if w[:2] == "qu": # if "qu" add the "qu" string as-is {R3}
                w = w + w[:2]
                w = w.lstrip(w[:2])
                continue
            if w[0] == 'y':# if 'y' than break {R4} 
                break
            else:
                w = w + w[:1] # if any other consonant, add it char by char
                w = w.lstrip(w[:1])
        phrase.append(w + "ay") # added "ay" at the end {R2}
    return " ".join(phrase)

