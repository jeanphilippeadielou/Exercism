def is_paired(ip_str):
    brackets = "".join(filter(lambda char: char in "([{}])", ip_str)) # filter out non bracket
    i = 0
    while i < len(brackets) and len(brackets) > 1 and brackets[i] not in ")]}":
        sbk = brackets[i:i+2] # 2 consecutive brackets
        if (sbk == "()" or sbk == "[]" or sbk == "{}"): # constitute a valid pair
            brackets = brackets.replace(brackets[i:i+2],"")
            i = 0 # begin at first if removed
            continue
        i+=1 # move on to the next char
    return brackets == "" # All pairs are matching
