module Convertions
   FIRST_DAY = "Sunday"
   def Convertions.milimeters_in_centimeters value
      result = value * 0.1
      puts w = "From milimeters to centimeters: #{result}cm"
      $newFile.write("#{w}\n")
      return result
   end

   def Convertions.centimeters_in_meters value2
      result = value2 * 0.01
      puts w = "From centimeters to meters: #{result}m"
      $newFile.write("#{w}\n")
      return result
   end

   def Convertions.meters_to_kilometers value3
      result = value3 * 0.001
      puts w = "From meters to kilometers: #{result}km"
      $newFile.write("#{w}\n")
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
			print "Insert a Username: "
			@user = gets.chomp.to_s

			case @user
				when /^[a-z0-9]{1,11}*$/; $userIsOk = true 
				else; puts w = "The username cannot be created"
				$newFile.write("#{w}\n") 
			end	
		end while $userIsOk == false	
		
		print"Insert an ID: "
		@id = gets.chomp.to_i
		@hash.store @user, @id
		$newFile.write("Insert a Username: #{@user}\nInsert an ID: #{@id}\n")
		
	end

	def method2			
		amountOfUsers = 0	
		print w = "Insert the amount of users between 3 and 15: "
		amountOfUsers = gets.chomp.to_i
		$newFile.write("#{w} #{amountOfUsers}\n")
		
		if amountOfUsers >= 3 &&  amountOfUsers <= 15	 	
		 	amountOfUsers.times do
				method1
			end
		else
		   puts w = "The amount has to be between 3 and 15"
		   $newFile.write("#{w}\n")
		   method2
		end

	end

	def method3
		puts w = "Select an option: "
		$newFile.write("#{w}\n")
		puts w = "a. From milimeters to centimeters "
		$newFile.write("#{w}\n")
		puts w = "b. From centimeter to meters "
		$newFile.write("#{w}\n")
		puts w = "c. From meters to kilometers "
		$newFile.write("#{w}\n")
		res = gets.chomp.to_s
		$newFile.write("Option selected: #{res}\n")
		print w = "Insert a value for the calculation: "
		num = gets.chomp.to_f
		$newFile.write("#{w} #{num}\n")
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
		   w = puts "The option is invalid"
		   $newFile.write("#{w}\n")
		end
	end

	def method5
		@hash.each do |key, value|
      		print w = "#{key} do you want to perform a calculation? y/n: "
			res = gets.chomp.to_s
			$newFile.write("#{w} #{res}\n")
	
			if res == "y"	
		 		method3
			else
			   puts w = "Good bye #{key}" 
			   $newFile.write("#{w}\n") 
			   @array.push(key)
			end
		end

	end

	def finalMethod
		puts w = "The users that didn't perform any calculation are: #{@array}"
		$newFile.write("#{w}\n")
	end

end 


$newFile = File.open("execution.log", 'a+')
#$newFile.truncate(0)

sc = RegistrationClass.instance
sc.method2
sc.method5
sc.finalMethod
$newFile.close	