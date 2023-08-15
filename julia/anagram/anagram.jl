function detect_anagrams(subject, candidates)
    isanagram = []
    for i in candidates
        if all([j in i for j in subject])
            isanagram = push!(isanagram, i)
        end
    end
    isanagram
end
