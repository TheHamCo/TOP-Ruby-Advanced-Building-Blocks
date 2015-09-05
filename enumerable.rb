module Enumerable
	def my_each
		for i in self; yield(i); end
	end

	def my_each_with_index

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
	end

	def my_count
	end

	def my_map
		arr = []
		for i in self; arr << yield(i); end
		arr
	end

	def my_inject(initial=0)
		acc = initial
		for i in self; acc = yield(acc,i); end
		acc
	end

	def multiply_els
	end
end