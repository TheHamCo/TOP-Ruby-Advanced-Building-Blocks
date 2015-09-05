def two_num(x,y)
	yield(x,y)
end

p two_num(13,3) {|a,b| a*b}