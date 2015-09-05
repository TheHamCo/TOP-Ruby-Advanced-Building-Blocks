def bubble_sort(array)
	# Initializations
	sorted_array = array
	# Flag tracks if a swap has occured
	swapped = true

	until swapped == false
		swapped = false
		# Only iterate through to the second to last element 
		# (there is no element to the right of the last element)
		0.upto(sorted_array.length-2) do |i|
			left = sorted_array[i]
			right = sorted_array[i+1]

			if left>right
				sorted_array[i], sorted_array[i+1] = right,left
				swapped = true # A swap has occured, so continue sorting
			end
		end
	end
	sorted_array
end

def bubble_sort_by(array)
	sorted_array = array
	swapped = true

	until swapped == false
		swapped = false
		0.upto(sorted_array.length-2) do |i|
			left = sorted_array[i]
			right = sorted_array[i+1]

			if yield(left,right) > 0 #Only difference between #bubble_sort and #bubble_sort_by
				#bubble_sort_by uses a block to determine sorting
				sorted_array[i], sorted_array[i+1] = right,left
				swapped = true
			end
		end
	end
	sorted_array
end