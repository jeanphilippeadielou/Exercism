import math
def is_armstrong_number(number):
    digits = [str(number)[i] for i in range (0, len(str(number)))]
    sum = 0
    for e in digits:
        sum += math.pow(int(e), len(str(number)))
    return sum == number
