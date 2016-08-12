nums = [1, 3.0, "something"]
puts nums[2] 			# => something

nums = [1, 3.0, "something", "something else"]
puts nums[-1] 			 # => something else

puts [1, 3.0, "something", "something else"].last  			# => something else
puts [1, 3.0, "something", "something else"].first 			# => 1

mystuff = ["samsung","nokia", "iphone"]
puts mystuff.length 	# => 3

mystuff = %w{samsung nokia iphone}
puts mystuff.inspect

my_array = [1,2,5,7,11]		
puts my_array 				# => 1 2 5 7 11
puts my_array.inspect		# => [1, 2, 5, 7, 11]
p my_array 				# => [1, 2, 5, 7, 11]
