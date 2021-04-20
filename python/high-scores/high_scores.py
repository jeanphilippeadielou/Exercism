def latest(scores):
    latest = scores[len(scores)-1] 
    return latest


def personal_best(scores):
    Max = max(scores)
    return Max

def personal_top_three(scores):
    top = []
    rg = 3
    if len(scores) < 3:
       rg = len(scores)
    for _ in range(rg):
        maxval = personal_best(scores)
        top.append(maxval)
        scores.remove(maxval)
    return top
