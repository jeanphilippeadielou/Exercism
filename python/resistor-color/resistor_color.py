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

