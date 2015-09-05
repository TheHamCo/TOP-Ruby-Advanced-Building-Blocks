require_relative '../bubblesort'

describe 'bubblesort' do
	it 'sorts an array of numbers using the bubblesort algorithm' do
		bubble_sort([4,3,78,2,0,2]).should == [0,2,2,3,4,78]
	end

	it 'sorts an array of strings using the bubblesort algorithm' do
		bubble_sort(['zulu', 'tango','alpha','foxtrot','echo']).should == %w(alpha echo foxtrot tango zulu)
	end
end

# describe 'bubble_sort_by' do
# 	it 'sorts an array based on a block' do
# 		 bubble_sort_by(["hi","hello","hey"]) {|left,right| left.length - right.length}.should == ["hi", "hey", "hello"]
#     end

# end