function isisogram(s)
    s = filter(isletter, s)
    unique(i for i in lowercase(s)) == [j for j in lowercase(s)]
end
