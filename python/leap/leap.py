def leap_year(year):
    # the year has to be divisible by 4 and not by 100 
    # except if it is so by 400
    return (year % 4 == 0) and not (year % 100 == 0 and year % 400 != 0)
