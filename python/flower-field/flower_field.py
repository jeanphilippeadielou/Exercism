# --- Based off of a solution proposed by a collaborator: W.S.
from itertools import product
def check_board(garden):
    for row in garden:
        for el in row: # for each char in the string
            if el.isalpha(): # Invalid char 
                raise ValueError("The board is invalid with current input.")
        for diffrow in garden:
            if len(row) != len(diffrow): # Different lengths 
                raise ValueError("The board is invalid with current input.")

def annotate(garden):
    check_board(garden)
    m = len(garden) # number of rows
    n = len(garden[0]) if garden != [] else 0 # number of columns
    for i in range(m):
        garden[i] = list(garden[i]) # Turn srting rows into lists
    for i,j in product(range(m), range(n)):
        if garden[i][j] == " ":
            surrounding = 0 # surrounding count of flowers
            for dx in [-1, 0, 1]:
                for dy in [-1, 0, 1]:
                    if 0 <= i + dx < m and 0 <= j + dy < n:
                        neighbour = garden[i + dx][j + dy] # neighbouring range
                        if neighbour == "*": # if it's a flower
                            surrounding += 1 # increment the count by 1
            garden[i][j] = str(surrounding) if surrounding != 0 else " "  # leave as-is if no flower
    return ["".join(garden[i]) for i in range(m)]
