using Dates, Printf
import Base: +, -, show

struct Clock
	h::Int
	m::Int
	Clock(h::Int, m::Int) = new((h+(m÷60))%24, m%60)
end

+(c::Clock, dm::Dates.Minute)=n(Clock(c.h, c.m+dm.value))
-(c::Clock, dm::Dates.Minute)=n(Clock(c.h, c.m-dm.value))

function n(c::Clock)
	min = c.m
	hou = c.h
	if c.m<0
		hou-=1
		min+=60
	end
	if hou<0
		hou+=24
	end
	return Clock(hou, min)
end

show(io::IO, c::Clock)=@printf(io, "\"%02i:%02i\"", n(c).h, n(c).m)
