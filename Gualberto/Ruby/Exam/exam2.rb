module Convertions
   FIRST_DAY = "Sunday"
   def Convertions.milimeters_in_centimeters value
      result = value * 0.1
      puts "milimeters_in_centimeters: #{result}"
      return result
   end

   def Convertions.centimeters_in_meters value2
      result = value2 * 0.01
      puts "centimeters_in_meters: #{result}"
      return result
   end

   def Convertions.meters_to_kilometers value3
      result = value3 * 0.001
      puts "meters_to_kilometers: #{result}"
   end
end

class NewClass
	include Convertions

	def initialize		  
		@user = ""
		@id = 0
	
	end

	def method1		
		$go = false
		begin 
			print"Insert an Username: "
			var_user = gets.chomp.to_s

			case var_user
				when /^[a-z0-9]{1,11}*$/; $go = true 
				else; puts"The username cannot be created" 
			end	
		end while $go == false
	
		print"Insert an ID: "
		var_id = gets.chomp.to_i

		@hash.store var_user, var_id
		
	end

	def method2		
		
		amountOfUsers = 0
		@hash = Hash.new 

		
		print"Insert the amount of users between 3 an 15: "
		amountOfUsers = gets.chomp.to_i

		r = if amountOfUsers >= 3 &&  amountOfUsers <= 15 then "ok" else method2 end

		amountOfUsers.times do | u, i |
			method1
		end

		
	end

	def method3
		puts"Select an option: "
		puts"a. From milimeters to centimeters "
		puts"b. From centimeter to meters "
		puts"c. From meters to kilometers "

		res = gets.chomp.to_s

		return res

	end

	def method4 r, num
		if r == "a"
		  Convertions.milimeters_in_centimeters num
		elsif r == "b"
		   Convertions.centimeters_in_meters num
		elsif r == "c"
		   Convertions.meters_to_kilometers value3 num
		else
		   puts "The option is invalid"
		end
	end

end 

sc = NewClass.new
sc.method2
r = sc.method3
print"Insert a value for the calculation: "
num = gets.chomp.to_f
sc.method4 r,num