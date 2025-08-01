def answer(question):
    question = question.lstrip("What is ") # Remove left end words
    question = question.rstrip("?") # Remove right end words
    question = [x for x in question.split() if x != "by"] # Filter out prepositions 
    operations = ["multiplied", "divided", "plus", "minus"] # Supported operations
    operational = any([c in operations for c in question]) # contains supported operations
    mathematical = any([i.lstrip('-').isdigit() for i in question]) # contains operands
    if not mathematical: # contains operands nor digits
        raise ValueError("syntax error") # raise an error
    if mathematical and not operational and len(question) > 1: # contains unsupported ops
        raise ValueError("unknown operation") # raise an error
    try:# attempt to add, substract, multiply or divide
        n = 0
        while len(question) > 1 and any([op in question for op in operations]):
                if question[n] == "plus": # addition
                    res = float(question[n-1]) + float(question[n+1])
                    question = question[:n-1] + [str(res)] + question[n+2:]
                    n = 0
                if question[n] == "minus": # substraction
                    res = float(question[n-1]) - float(question[n+1])
                    question = question[:n-1] + [str(res)] + question[n+2:]
                    n = 0
                if question[n] == "multiplied": # multiplication
                    res = float(question[n-1]) * float(question[n+1])
                    question = question[:n-1] + [str(res)] + question[n+2:]
                    n = 0
                if question[n] == "divided": # division
                    res = float(question[n-1]) / float(question[n+1])
                    question = question[:n-1] + [str(res)] + question[n+2:]
                    n = 0
                n += 1
                if n > len(question): # no operations between 2 operands
                    if not (question[n] in operations and question[n-1] in operations):
                       raise ValueError("syntax error") 
                    n = 0
    except:
        raise ValueError("syntax error")
    if len(question) == 1: # last remaing term in question list is the answer
        return float(question[0])
    else:
        raise ValueError("syntax error")
