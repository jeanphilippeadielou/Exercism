def value(colors):
    code_list = list()
    for c in range(2): # for the first two colors in the list
        code_list.append(str(color_code(colors[c]))) # append code
    return int("".join(code_list)) # return int of the joined list

def color_code(color):
    c = 0
    names = colors() # list of all the colors
    while not names[c] == color: # iterate over the colors names
        c += 1 # increment
    return c # return the found corresponding color code 

def colors(): # exhaustive list of all the colors
    colors = ["black",
              "brown",
              "red",
              "orange",
              "yellow",
              "green",
              "blue",
              "violet",
              "grey",
              "white"]
    return colors
