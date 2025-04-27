function triangle(n)
	if n < 0 && throw(DomainError(n, "Out of range"))
	end		
	row(n) = [binomial(n-1, i) for i in 0:n-1] 
	map(row, 1:n)	
end
