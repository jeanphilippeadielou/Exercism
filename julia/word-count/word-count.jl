using Printf

function wordcount(sentence)

	#Let's replace non-ascii characters
	sentence=replace(sentence, r"[\.,!\^\&\*\(\)~@#\\\$%\{\}\[\]:;\/\<\>]"=>" ")
  	sentence=replace(sentence, r"^'|[(?<=\s)']['(?=\s)]|'$"=>" ")

	#Let's replace Uppercase by lowercases
	sentence = lowercase(sentence)

	#Let's split on all non-letter/non-digit except appostrophe if it is in the middle of a word
	words = split(sentence, c -> !(isletter(c) || isdigit(c) || c == '''); keepempty = false)

	#Let's create a Dictionary out of the words in the sentence
	d = Dict{String, Int64}()
	for w in words
        	d[w] = count(j == w for j in words)
	end
    	d
end
