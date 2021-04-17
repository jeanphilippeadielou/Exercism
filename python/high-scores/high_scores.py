def latest(scores):
	latest = scores.pop() 
	return latest


def personal_best(scores):
	Max = max(scores)
	return Max

def personal_top_three(scores):
        """
        You can add right away a check to see if there are 3 scores at
        least. If not, you can't return the top 3 scores:
            if len(scores) < 3:
                raise Exception("There is not a sufficient number of scores")
        """
	top = [max(scores)] # try to save max(scores) as variable
        scores.remove(max(scores)) # you can reuse the variable in this line
        """
        Instead of doing multiple if then conditions, use a
        loop. A for loop could be good:
            for i in range(3): # can even use no variable by doing for _ in range(3)
                maxval = personal_best(scores)
                top.append(maxval)
                scores.remove(maxval)
        """
	if len(scores)>0:
	   top.append(max(scores))
	   scores.remove(max(scores))
	if len(scores)>0:
	   top.append(max(scores))
	return top
