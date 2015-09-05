def two_num(x,y)
	yield(x,y)
end

module Fixnum
def one_num x
	yield(x)
end
end

p 1.one_num{|x| puts x}
# p two_num(13,3) {|a,b| a*b}