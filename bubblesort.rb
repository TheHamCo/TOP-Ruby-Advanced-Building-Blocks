def bubble_sort(array)
	sorted_array = array
	swapped = true

	begin
	swapped = false
	sorted_array.each_with_index do |elem, ind|
		break if ind+1 == sorted_array.length

		if elem > sorted_array[ind+1]
			sorted_array[ind], sorted_array[ind+1] = sorted_array[ind+1], elem
			swapped = true
		end
	end
	end while swapped == true
	sorted_array
end

def bubble_sort_by(array)

end