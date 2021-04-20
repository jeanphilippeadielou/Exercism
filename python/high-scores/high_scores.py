def latest(scores):
    return scores[-1] 

def personal_best(scores):
    return max(scores)

def personal_top_three(scores):
    rg = 3
    if len(scores) < 3:
       rg = len(scores)
    ranking = sorted(scores, reverse = True)
    return [ranking[i] for i in range(rg)]
