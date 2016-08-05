class Example
	def test_local_variable
		value = 5
		another_value = 10
		addtion_of_values = value + another_value
		puts"#{addtion_of_values}"
		puts local_variables				#Imprime todas la variables locales
	end
end

Example.new.test_local_variable


