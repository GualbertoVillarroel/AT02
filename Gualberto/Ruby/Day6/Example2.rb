def celsiusToFahrenheit celsius
	fahrenheit = (((9* celsius ) /5) + 32)
	return fahrenheit
end

def fahrenheitToCelsius fahrenheit
	(5*(fahrenheit - 32))/9

end

puts"Insert a grade in celsius:"
c = gets.chomp.to_f
puts "Celsius To Fahrenheit: #{celsiusToFahrenheit c}"

puts"Insert a grade in fahrenheit:"
f = gets.chomp.to_f
puts "Fahrenheit To Celsius: #{fahrenheitToCelsius f}"

