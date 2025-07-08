def encode(plain_text):
    ciphed_text = list() # empty list
    auth_intext = "".join(filter(str.isalnum, plain_text)).lower() # filter out non alnum
    for i in auth_intext:
        if i.isdigit(): # keep digit identical
            ciphed_text.append(i)
        else:
            ciphed_text.append(chr(97+ord('z')-ord(i))) # atbash ciper letters
    ciphed_text = "".join(ciphed_text)
    c_text = list() # empty list
    for j in range(0, len(ciphed_text), 5): # iterating by groups of 5
        c_text.append(ciphed_text[j:j+5]) # 5 consecutive characters
    return " ".join(c_text) # join them grouped and seperated by a space

def decode(ciphered_text):
    return encode(ciphered_text).replace(" ", "") # filter out spaces
