class MyClass
	def new_array
		print"Insert the number of elements in the array: "
		num_elements = gets.chomp.to_i

		array = Array.new
		
		num_elements.times do | value_1 |  
		puts"Insert an element"
		elem = gets.chomp.to_i
		array.push(elem)
		end
		
		return array
	end
	
	def show_array arrayCreated
		puts arrayCreated.inspect
	end
end

sc = MyClass.new
arrayCreated = sc.new_array
sc.show_array arrayCreated


