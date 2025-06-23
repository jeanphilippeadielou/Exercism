def score(x, y):
    dist_center = (x ** 2 + y ** 2) ** 0.5 # distance from the center
    if dist_center <= 1: # inner circle
        return 10
    if dist_center <= 5: # middle circle
        return 5
    if dist_center <= 10: # outer circle
        return 1
    else: # out of target
        return 0
