def latest(scores):
	latest = scores.pop() 
	return latest


def personal_best(scores):
	Max = max(scores)
	return Max


def personal_top_three(scores):	
	top = [max(scores)]
	scores.remove(max(scores))
	if len(scores)>0:
	   top.append(max(scores))
	   scores.remove(max(scores))
	if len(scores)>0:
	   top.append(max(scores))
	return top
