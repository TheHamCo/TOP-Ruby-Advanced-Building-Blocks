require_relative '../enumerable'

describe 'my each' do
	it 'does the same thing as each' do
		a = []
		[1,2,3].my_each {|el| a << el}
		a.should == [1,2,3]
	end
end

describe 'my_each_with_index' do

end

describe 'my_select' do
	it 'selects an element based on block condition' do
		h = [1,2,3].my_select{|a| a == 3}
		h.should == [3]
	end

	it 'selects an element based on block condition' do
		h = %w(water wall king queen watch).my_select{|a| a[0..1] == 'wa'}
		h.should == %w(water wall watch)
	end
end

describe 'my_all?' do
	it 'makes sure all elements meet the block condition' do
		%w[ant bear cat].my_all? { |word| word.length >= 3 }.should == true
	end
	it 'makes sure all elements meet the block condition' do
		%w[ant bear cat].my_all? { |word| word.length >= 4 }.should == false
	end
	# it 'works withous a block' do
	# 	[nil, true, 99].my_all?
	# end
end

describe 'my_any?' do
	it 'makes sure at least one element meets the block condition' do
		%w[ant bear cat].my_any? { |word| word.length >= 3 }.should == true
	end
	it 'makes sure at least one element meets the block condition' do
		%w[ant bear cat].my_any? { |word| word.length >= 4 }.should == true
	end
	# Needs to also work without a block
end

describe 'my_none?' do

end

describe 'my_count' do

end

describe 'my_map' do
	it 'returns a new array with the results of running block once for every element in enum.' do
		(1..4).my_map { |i| i*i }.should == [1, 4, 9, 16]
	end
	it 'returns a new array with the results of running block once for every element in enum.' do
		(1..4).my_map { "cat"  }.should == ["cat", "cat", "cat", "cat"]
	end
	# check for any other functionalities
end

describe 'my_inject' do
	it 'Combines all elements of enum by applying a block' do
		(5..10).my_inject { |sum, n| sum + n }.should == 45
	end
	it 'Combines all elements of enum by applying a block' do
		(5..10).my_inject(1) { |product, n| product * n }.should == 151200
	end
	# check for any other functionalities
end

describe 'multiply_els' do

end