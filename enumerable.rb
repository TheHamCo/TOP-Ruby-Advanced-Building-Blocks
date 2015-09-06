module Enumerable
	def my_each
		for i in self; yield(i); end
	end

	def my_each_with_index
		# if self.is_a?(Hash)
			for i in 0..self.length-1
				yield(self[i], i)
			end
		# end
	end

	def my_select
		arr=[]
		for i in self
			arr << i if yield(i)
		end
		arr
	end

	def my_all?
		for i in self
			if yield(i)
				meets = true
			else
				meets = false
				break
			end
		end
		meets
	end

	def my_any?
		meets = false
		for i in self
			meets = true if yield(i)
		end
		meets
	end

	def my_none?
		# Implement using my_all?
		for i in self
			if !yield(i)
				meets = true
			else
				meets = false
				break
			end
		end
		meets
	end

	def my_count(x=nil)
		acc = 0
		for i in self
			if block_given?
				check = yield(i)
			elsif !x.nil?
				check = i==x
			else
			 	check = true
			end
			acc += 1 if check
		end
		acc
	end

	def my_map(&block)
		arr = []
		for i in self; arr << block.call(i); end
		arr
	end

	def my_inject(initial=nil)
		if !initial.nil?
			acc = initial
		elsif yield(1,1)==2
			acc = 0# how to fix this?
		else
			acc = 1
		end

		for i in self; acc = yield(acc,i); end
		acc
	end
end

def multiply_els(array)
	array.my_inject{ |product, n| product * n }
end