"""
This exercise stub and the test suite contain several enumerated constants.

Enumerated constants can be done with a NAME assigned to an arbitrary,
but unique value. An integer is traditionally used because it’s memory
efficient.
It is a common practice to export both constants and functions that work with
those constants (ex. the constants in the os, subprocess and re modules).

You can learn more here: https://en.wikipedia.org/wiki/Enumerated_type
"""

# Possible sublist categories.
# Change the values as you see fit.
SUBLIST = 1
SUPERLIST = 2
EQUAL = 3
UNEQUAL = 4

def sublist(list_one, list_two):
    # Verify if any contiguous sequence of list_two exactly matches list_one
    a_subof_b = any([list_one == list_two[i:i+len(list_one)] for i in range(len(list_two))])
    # Verify if any contiguous sequence of list_one exactly matches list_two
    b_subof_a = any([list_two == list_one[i:i+len(list_two)] for i in range(len(list_one))])
    if (a_subof_b and not b_subof_a): # a included in  b but not conversely
        return SUBLIST
    if (b_subof_a and not a_subof_b): # b is included in a but not conversely
        return SUPERLIST
    if (b_subof_a and a_subof_b) or list_one == list_two: # a included in b and conversely
        return EQUAL
    if (not b_subof_a and not a_subof_b): # a not included in b and conversely
        return UNEQUAL
