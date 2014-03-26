puts "Digite o numero de elementos"
n=gets.to_i
i=0
array= Array.new()
while i<n
	array[i]=gets.to_i
	i+=1	
end

def ordena v
	v.sort
end

puts ordena(array)
