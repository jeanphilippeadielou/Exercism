def square(number):
    if number >= 1 and number <=64:
        return 2**(number-1)
    else:
        raise ValueError("square must be between 1 and 64")

def total():
    return sum([2**n for n in range(64)])
