function ISBN(isbn)
    isbn = replace(isbn, r"-" => "")
    if last(isbn, 1) == 'X'
        if sum([parse(Int, isbn[i])*j for i=1:9 for j=10:-1:2], 10) % 11 != 0
            false || throw(DomainError, "invalid ISBN")
        end
    elseif sum(parse(Int, isbn[i])*j for i=1:10 for j=10:-1:1) % 11 != 0
        false || throw(DomainError, "invalid ISBN")
    else
        isbn
    end
end
