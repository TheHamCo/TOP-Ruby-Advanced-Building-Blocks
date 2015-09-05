def bubble_sort(array)
	sorted_array = array
	swapped = true

	begin
	swapped = false
	0.upto(sorted_array.length-2) do |i|
		left = sorted_array[i]
		right = sorted_array[i+1]

		if left>right
			sorted_array[i], sorted_array[i+1] = right,left
			swapped = true
		end
	end
	end while swapped == true
	sorted_array
end

def bubble_sort_by(array)

end