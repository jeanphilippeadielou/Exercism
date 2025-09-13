def place_letter(layer, index, shift, letter):
    lay_ele = list(layer) # make a list of the elements of layer
    lay_ele[index - shift] = letter # insert letter in layer
    lay_ele[index + shift] = letter # insert letter in layer
    return "".join(lay_ele) # return updated filled layer

def rows(letter):
    x = 'A' # all diamonds begin with A
    cent = ord(letter) - ord('A') # center of the diamond
    dmd_dim = 2 * cent + 1 # dimension of diamond
    dmd = [" " * dmd_dim for _ in range(dmd_dim)] # dd length list of dd length str
    posi = 0 # diamond row number
    while not posi >= dmd_dim: # as long as we haven't reached the bottom
        layr = dmd[posi] # row of the diamond
        shft = posi if posi <= cent else 2 * cent - posi # column variation
        l = chr(ord(x) + shft) # letter inserted at the iteration
        dmd[posi] = place_letter(layr, cent, shft, l) # filling the layer
        posi += 1 # increment diamond row number
    return dmd

