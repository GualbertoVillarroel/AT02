def block
	@greatting = "How are you?"
	yield(@value_name, @value_number)  
end  

print"Introduce your name: "
@value_name = gets.chomp
print"Introduce your age: "
@value_number = gets.chomp.to_i

block {|string, number| puts "Hi " + string +  'you are ' + number.to_s + " years old. " + @greatting}
