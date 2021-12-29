function secret_handshake(code)
	hs = []
	bincode = bitstring(code)
	if bincode[end] == '1'
		push!(hs, "wink")
	end
	if bincode[end-1] == '1'
		push!(hs, "double blink")
	end
	if bincode[end-2] == '1'
		push!(hs, "close your eyes")
	end
	if bincode[end-3] == '1'
		push!(hs, "jump")
	end
	if bincode[end-4] == '1'
		hs = reverse(hs)
	end
	return hs
end
