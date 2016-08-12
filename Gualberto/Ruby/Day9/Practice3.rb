class MyClass
	def method1
		puts"Insert the number of elements in the arrays "
		num_elements = gets.chomp.to_i

		arrayInt = Array.new
		
		num_elements.times do | value_1 |  
		print"Insert a number element: "
		elem = gets.chomp.to_s
		arrayInt.push(elem)
		end

		arrayString = Array.new
		num_elements.times do | value_2 |  
		print"Insert a letter element: "
		elem = gets.chomp.to_s
		arrayString.push(elem)
		end

		arrayMix = arrayInt + arrayString
		return arrayInt, arrayString, arrayMix

	end

	def method2 arr1, arr2
		common = arr1 & arr2
		puts "The common elements in both arrays are: #{common}"
		puts "The first element of the array of numbers is: #{arr1.first}"
		puts "The first element of the array of letters is: #{arr2.first}"
		puts "The last element of the array of numbers is: #{arr1.last}"
		puts "The last element of the array of letters is: #{arr2.last}"
	end

	def method3 arr1, arr2
		arr_extracted = Array.new
		arr_extracted.push(arr1.shift)
		arr_extracted.push(arr2.pop)
		common = arr1 & arr2
		puts"The new mixed array with some common elements extracted is: #{common}"
		return arr_extracted
	end

	def method4 arrayExtracted
		puts"The array after extract some elements is: #{arrayExtracted}"
	end
end

sc = MyClass.new
numbers, letters, mixed = sc.method1
puts"The first array of numbers is: #{numbers}"
puts"The second array of letters is: #{letters}"
puts"The thrird array mixed of numbers and letters is: #{mixed}"
sc.method2 numbers, letters
arrayExtracted = sc.method3 numbers, letters
sc.method4 arrayExtracted