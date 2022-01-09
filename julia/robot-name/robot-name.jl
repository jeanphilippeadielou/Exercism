using Random
rl = Set()
rc = Set()

mutable struct Robot
	name::String
	Robot() = reset!(new())
end

function reset!(instance::Robot)
	instance.name = name(instance)
	delete!(rl, instance.name)
	push!(rc, instance.name)
	return instance
end

function name(r::Robot)
	name = join(randstring('A':'Z', 2)*randstring('0':'9', 3))
	while (name in rl || name in rc)
		name = join(randstring('A':'Z', 2)*randstring('0':'9', 3))
	end
	r.name = name
	push!(rl, r.name)
	return r.name
end
