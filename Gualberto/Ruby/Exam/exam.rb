module Convertions
   FIRST_DAY = "Sunday"
   def Convertions.milimeters_in_centimeters value
      result = value * 0.1
      puts "From milimeters to centimeters: #{result}cm"
      return result
   end

   def Convertions.centimeters_in_meters value2
      result = value2 * 0.01
      puts "From centimeters to meters: #{result}m"
      return result
   end

   def Convertions.meters_to_kilometers value3
      result = value3 * 0.001
      puts "From meters to kilometers: #{result}km"
   end
end

require 'singleton' 
class RegistrationClass
	include Singleton
	include Convertions

	def initialize		  
		@user
		@id
		@array = Array.new
		@hash = Hash.new 
	end

	def method1		
		$userIsOk = false
		begin 
			print"Insert an Username: "
			@user = gets.chomp.to_s

			case @user
				when /^[a-z0-9]{1,11}*$/; $userIsOk = true 
				else; puts"The username cannot be created" 
			end	
		end while $userIsOk == false	
		
		print"Insert an ID: "
		@id = gets.chomp.to_i
		@hash.store @user, @id
		
	end

	def method2			
		amountOfUsers = 0	
		print"Insert the amount of users between 3 and 15: "
		amountOfUsers = gets.chomp.to_i
		
		if amountOfUsers >= 3 &&  amountOfUsers <= 15	 	
		 	amountOfUsers.times do
				method1
			end
		else
		   puts"The amount has to be between 3 and 15"
		   method2
		end

	end

	def method3
		puts"Select an option: "
		puts"a. From milimeters to centimeters "
		puts"b. From centimeter to meters "
		puts"c. From meters to kilometers "
		res = gets.chomp.to_s
		print"Insert a value for the calculation: "
		num = gets.chomp.to_f
		method4 res,num
	end

	def method4 r, num
		if r == "a"
		  Convertions.milimeters_in_centimeters num
		elsif r == "b"
		   Convertions.centimeters_in_meters num
		elsif r == "c"
		   Convertions.meters_to_kilometers num
		else
		   puts "The option is invalid"
		end
	end

	def method5
		@hash.each do |key, value|
      		print "#{key} do you want to perform a calculation? y/n: "
			res = gets.chomp.to_s
	
			if res == "y"	
		 		method3
			else
			   puts"Good bye #{key}"  
			   @array.push(key)
			end
		end

	end

	def finalMethod
		puts"The users that didn't perform any calculation are: #{@array}"
	end

end 


newFile = File.open("execution.log", 'a+')
#newFile.truncate(0)
written_text = gets.to_s

sc = RegistrationClass.instance
sc.method2
sc.method5
sc.finalMethod


newFile.write(written_text)
newFile.close	
	
#newFile = File.open("execution.log")
#puts newFile.read