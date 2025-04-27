"
" Convert a phrase into an uppercased acronym formed from
" the initial letter of each word, ignoring leading underscores
"
" Examples:
"
"   :echo Abbreviate('First In, First Out')
"   FIFO
"
"   :echo Abbreviate('The Road _Not_ Taken')
"   TRNT
"
function! Abbreviate(phrase) abort
:let str = ""	
	:for i in split(phrase)
		:if i[0] = UCASE(i[0]) Then
		:	str + i
		:endif
	:endfor
	return str
endfunction 
