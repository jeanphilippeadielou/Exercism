def annotate(garden):
    if garden == []:
        return list()
    for x in garden:
        for y in garden:
            if len(x) != len(y):
                raise ValueError("The board is invalid with current input.")
    h = len(garden) # length of the garden
    if h == 0 :
        return [] # return empty garden if the garden is empty
    w = len(garden[0])
    result = []
    for i in range(h):
        line = ""
        for j in range(w):
            if garden[i][j] == ' ':
                lft = j-1
                cnt = j
                rgt = j+1
                top = i-1
                mid = i
                bot = i+1
                flower_horizon = [
                        # row 1
                                garden[top][lft] == '*' if top >= 0 and lft >= 0 else False, # 1 
                                garden[top][cnt] == '*' if top >= 0 else False,              # 2 
                                garden[top][rgt] == '*' if top >= 0 and rgt < w else False,  # 3
                        # row 2 
                                garden[mid][lft] == '*' if lft >= 0 else False,              # 4 
                                # middle & center "[mid][cnt]" iterator itself
                                garden[mid][rgt] == '*' if rgt < w else False,               # 5 
                        # row 3 
                                garden[bot][lft] == '*' if bot < h and lft >= 0 else False,  # 6 
                                garden[bot][cnt] == '*' if bot < h else False,               # 7 
                                garden[bot][rgt] == '*' if bot < h and rgt < w else False    # 8
                                 ]
                if not sum(flower_horizon) == 0:
                    line += str(sum(flower_horizon))
                else:
                    line += " "
            if garden[i][j] == '*':
                line += "*"
            if garden[i][j].isalpha():
                raise ValueError("The board is invalid with current input.")
        result.append(line)
    if result != '':
        return result
    else:
        return []
