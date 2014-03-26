n = (gets).to_i
def fat val
	if(val==0) 
		return 1
	end
	return val*fat(val-1)
end

puts fat(n)
