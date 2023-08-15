using Dates: Minute
using Printf
import Base: +, -, ==, show

struct Clock
	h::Int64
	m::Int64
	function Clock(h, m)
		if m % 60 >= 0  
			new(mod(h + m ÷ 60, 24), mod(m, 60))
		else
			new(mod(h + (m ÷ 60) - 1, 24), mod(m, 60))
		end
	end
end

function +(c::Clock, dm::Dates.Minute)
	Clock(c.h, c.m + dm.value)
end

function -(c::Clock, dm::Dates.Minute)
	Clock(c.h, c.m - dm.value)
end

function ==(a::Clock, b::Clock)
	Clock(a.h, a.m).h == Clock(b.h, b.m).h &&
	Clock(a.h, a.m).m == Clock(b.h, b.m).m
end
show(io::IO, c::Clock)=@printf(io, "\"%02i:%02i\"", c.h, c.m)
