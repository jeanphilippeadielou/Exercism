function rotate(k, char::Char)
    if islowercase(char)
        'a'+ ((char-'a'+k) % 26)
    elseif isuppercase(char)
        'A'+ ((char-'A'+k) % 26)
    else
        char
    end
end
function rotate(k, string::AbstractString)
    cipher=[]
    for letter in string
        append!(cipher, rotate(k, letter))
    end
    join(cipher)
end
