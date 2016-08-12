module Arrayy
	def Arrayy.returning_array
		nums = [1, 2, 3, 4]
		return nums
	end
	def Arrayy.printing_array nums
		puts "The complete array is: #{nums.inspect}"
	end
	def Arrayy.printing_firstElement_array nums
		puts "The first element is: #{nums.first}"
	end
	def Arrayy.printing_lastElement_array nums
		puts "The last element is: #{nums.last}"
	end
	def Arrayy.printing_common_differentArrays nums
		common = nums & [3, 7, 11]
		puts "The common element in both arrays is: #{common}"

	end
end

v = Arrayy.returning_array
Arrayy.printing_array v
Arrayy.printing_firstElement_array v
Arrayy.printing_lastElement_array v
Arrayy.printing_common_differentArrays v