function score(str)
	pnt=0
	for l=1:length(str)
		try
			if uppercase(str)[l] in Set(['A','E','I','O','U','L','N','R','S','T'])
				pnt+=1
			elseif uppercase(str)[l] in Set(['D','G'])
				pnt+=2
			elseif uppercase(str)[l] in Set(['B','C','M','P'])
				pnt+=3
			elseif uppercase(str)[l] in Set(['F','H','V','W','Y'])
				pnt+=4
			elseif uppercase(str)[l] in Set(['K'])
				pnt+=5
			elseif uppercase(str)[l] in Set(['J','X'])
				pnt+=8
			elseif uppercase(str)[l] in Set(['Q','Z'])
				pnt+=10
			else
				pnt+=1
			end
		catch
		end
	end
	pnt
end
