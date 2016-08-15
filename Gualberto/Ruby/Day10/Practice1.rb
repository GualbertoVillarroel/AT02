class NewClass
	attr_writer :name
	attr_writer :age

	def ageToHours
		puts result = @age < 35? "The age in hours is: #{@age*365*24} hrs" : "Age cannot be calculated"
		
	end

	def valueBetween
		a = 1
		
		case @age
			when 0..5 then puts "You are a baby"    
			when 6..12 then puts "You are a child"
			when 13..21 then puts "You are a young people" 
			when 22..35 then puts "You are adult"
			else ageToHours
		end
	end
end


print"Insert a name: "
name = gets.chomp.to_s
print"Insert an age: "
age = gets.chomp.to_i
sc = NewClass.new
sc.name = name
sc.age = age
sc.ageToHours
sc.valueBetween
