import math
def is_armstrong_number(number):
    """
    Redundancy: simply do str(number) to obtain a list. You call str(number) multiple times
    instead of once. This looks like:
        digits = [i for i in str(number)]
    """
    digits = [str(number)[i] for i in range (0, len(str(number)))]
    sum = 0
    """
    Optimal but in python, list comprehensions are usually faster when possible. This looks like
    the single call:
        sum = sum(math.pow(int(e)) for e in digits)
    """
    for e in digits:
        sum += math.pow(int(e), len(str(number))) # simply do len(digits) doesn't recompute the value so better
    return sum == number
