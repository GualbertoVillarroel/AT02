#Only for personal test
ARGUMENTOS
class Circle
	def area(radius)
		result = radius * 2 * Math::PI
		puts"The area of the circle is: #{result}"
	end

	def perimeter(radius)
		result = radius * radius * Math::PI
		puts"The perimeter of the circle is: #{result}"
	end

end

puts"Put a radius:"
radius = gets.chomp.to_i
Circle.new.area(radius)
Circle.new.perimeter(radius)


.......................

C:\BDT\AT02\Gualberto\Ruby\Day3>ruby Practice1.rb
Put a radius:
7
The area of the circle is: 43.982297150257104
The perimeter of the circle is: 153.93804002589985


###################################################
MODULOS

$example_of_global = 6
module ModuleTest
	puts"Inside module"
	puts $example_of_global
end

def method_test
	puts"Inside method"
	puts $example_of_global
end

#method_test

class Some_test
	puts"Inside class"
	puts $example_of_global
	$example_of_global = 75
end

method_test
puts"Inside toplevel"
puts $example_of_global
puts global_variables.include?:$example_of_global

.......................

Inside module
6
Inside class
6
Inside method
75
Inside toplevel
75
true
[Finished in 0.1s]


###################################################
HERENCIA

class Father
	@@money = 100
	def self.money
		@@money
	end
end
 
class Son_1 < Father
	def self.mount1
		moneySon1 = 10
		@@money = @@money-moneySon1
		moneySon1	
 	end
end
 
class Son_2 < Father
	def self.mount2
		moneySon2 = 25
		@@money -= moneySon2
		moneySon2
	end
end
 
class Son_3 < Father
	def self.mount3
		moneySon3 = 50
		@@money -= moneySon3
		moneySon3
 	end
end
 
puts"Father's money: #{Father.money}"
puts"The first son is taking: #{Son_1.mount1}"
puts"The second son is taking: #{Son_2.mount2}"
puts"The third son is taking: #{Son_3.mount3}"
puts"Father's money at the final: #{Father.money} "

.......................


Father's money: 100
The first son is taking: 10
The second son is taking: 25
The third son is taking: 50
Father's money at the final: 15 
[Finished in 0.1s]

###################################################

lass Item
	attr_reader :item_name, :quantity

	def initialize(item_name, quantity)
		@item_name = item_name
		@quantity = quantity
	end	
end

	item = Item.new("tv",1)
	puts item.item_name
	puts item.quantity

.......................

tv
1
[Finished in 0.1s]

###################################################
class Item
	attr_reader :item_name
	attr_writer :item_name

	def initialize(quantity)
		@quantity = quantity
	end	

	def message
		puts"You have #{@quantity}: #{@item_name}"
	end
end

	item = Item.new(1)
	puts item.item_name = "radio"
	puts item.message

.......................

radio
You have 1: radio

[Finished in 0.1s]

###################################################

class MyCar
	attr_reader :year
	attr_accessor :color
	attr_accessor :model
	attr_reader :current_speed
	
	def initialize(year)
		@current_speed = 0
		@year = year
	end

	def speed_up(number) 
      @current_speed += number 
      puts "You accelerate to  #{current_speed} mph." 
	end

	def brake(number) 
      @current_speed -= number 
      puts "You decelerate to  #{current_speed} mph." 
	end

	def car_off
      @current_speed = 0
      puts "The car is off the current speed is: #{current_speed} mph." 
	end
	

end

c = MyCar.new(2016)
#c.year = "2016"
puts "Year: #{c.year}"
puts "Color: #{c.color = "Black"}"
puts "Model: #{c.model = "Mustang"}"

puts "Initial speed: #{c.current_speed} mph"
c.speed_up(50)
c.brake(10)
c.car_off

puts "Changing the Color to: #{c.color = "Dark Black"}"
puts "Actual year of the car: #{c.year}"

.......................

Year: 2016
Color: Black
Model: Mustang
Initial speed: 0 mph
You accelerate to  50 mph.
You decelerate to  40 mph.
The car is off the current speed is: 0 mph.
Changing the Color to: Dark Black
Actual year of the car: 2016
[Finished in 0.1s]

###################################################

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

.......................

C:\BDT\AT02\Gualberto\Ruby\Day6>ruby example2.rb
Insert a grade in celsius:
34
Celsius To Fahrenheit: 93.2
Insert a grade in fahrenheit:
93.2
Fahrenheit To Celsius: 34.0


###################################################

def passenger name, destination="CBBA", ticket_price
	resultado = ticket_price / 6.96
	puts "Hello #{name}"
	puts "The destination is: #{destination}"
	puts "The price of the ticket in dollars is: #{resultado}"
end

puts"Insert your name:"
n = gets.chomp
puts"Insert the price in Bolivianos:"
p = gets.chomp.to_f
passenger n, p

.......................

C:\BDT\AT02\Gualberto\Ruby\Day6>ruby practice1.rb
Insert your name:
Gualy
Insert the price in Bolivianos:
350
Hello Gualy
The destination is: CBBA
The price of the ticket in dollars is: 50.287356321839084

###################################################
def calculation seconds
	min = seconds/60
	hours= min/60
	
	return min, hours
end
 
print"Insert the seconds:"
sec = gets.chomp.to_i

minutes, hours = calculation sec
puts "Minutes: #{minutes}, Hours: #{hours} "
.......................

C:\BDT\AT02\Gualberto\Ruby\Day7>ruby example1.rb
Insert the seconds:7000
Minutes: 116, Hours: 1


###################################################

def method_block
	##some code
	@result = 0
	yield
	puts "The value obtained is #{@result}"
end

#method_block {@result = 15 * 25}


method_block do
	@result = @result == 0 ? 25+15 : 25*5
	puts "I changed the value into the block"
	## any other code  that you would like to introduce into the method
end

.......................

I changed the value into the block
The value obtained is 40

###################################################

def block
	@greatting = "How are you?"
	yield(@value_name, @value_number)  
end  

print"Introduce your name: "
@value_name = gets.chomp
print"Introduce your age: "
@value_number = gets.chomp.to_i

block {|string, number| puts "Hi " + string +  'you are ' + number.to_s + " years old. " + @greatting}

.......................

C:\BDT\AT02\Gualberto\Ruby\Day7>ruby practice2.rb
Introduce your name: Gualy
Introduce your age: 177
Hi Gualyyou are 177 years old. How are you?

###################################################

module Arrayy
	def Arrayy.returning_array
		nums = [1, 2, 3, 4]
		return nums
	end
	def Arrayy.printing_array nums
		puts "The complete array is: #{nums.inspect}"
	end
	def Arrayy.printing_firstElement_array nums
		puts "The first element is: #{nums.first}"
	end
	def Arrayy.printing_lastElement_array nums
		puts "The last element is: #{nums.last}"
	end
	def Arrayy.printing_common_differentArrays nums
		common = nums & [3, 7, 11]
		puts "The common element in both arrays is: #{common}"

	end
end

v = Arrayy.returning_array
Arrayy.printing_array v
Arrayy.printing_firstElement_array v
Arrayy.printing_lastElement_array v
Arrayy.printing_common_differentArrays v

.......................

The complete array is: [1, 2, 3, 4]
The first element is: 1
The last element is: 4
The common element in both arrays is: [3]
[Finished in 0.1s]

###################################################

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


.......................

C:\BDT\AT02\Gualberto\Ruby\Day9>ruby practice2.rb
Insert the number of elements in the array: 3
Insert an element
1
Insert an element
2
Insert an element
3
[1, 2, 3]

###################################################

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

.......................

C:\BDT\AT02\Gualberto\Ruby\Day9>ruby practice3.rb
Insert the number of elements in the arrays
4
Insert a number element: 1
Insert a number element: 2
Insert a number element: 3
Insert a number element: 4
Insert a letter element: a
Insert a letter element: 2
Insert a letter element: 3
Insert a letter element: d
The first array of numbers is: ["1", "2", "3", "4"]
The second array of letters is: ["a", "2", "3", "d"]
The thrird array mixed of numbers and letters is: ["1", "2", "3", "4", "a", "2", "3", "d"]
The common elements in both arrays are: ["2", "3"]
The first element of the array of numbers is: 1
The first element of the array of letters is: a
The last element of the array of numbers is: 4
The last element of the array of letters is: d
The new mixed array with some common elements extracted is: ["2", "3"]
The array after extract some elements is: ["1", "d"]

###################################################

class MyClass
	attr_reader :newHash

	def create_hash
		print"Insert the length of the hash: "
		num_hash = gets.chomp.to_i

		@newHash = Hash.new
		
		num_hash.times do | key, value |  
			print"Insert a key: "
			key = gets.chomp.to_s
			print"Insert a value: "
			value = gets.chomp.to_s

			@newHash.store key,value
		end

		p @newHash
	end

	def print_hashKey hash
		puts"The keys are: #{hash.keys}"
	end

	def print_hashValue hash
		puts"The values are: #{hash.values}"
	end

	def print_hash hash
		puts"The hash is: #{hash}"
	end

	def isAKey hash
		print"Insert a key to search in the hash: "
		key = gets.chomp.to_s
		puts hash.has_key?(key)

	end
	def isAValue hash
		print"Insert a value to search in the hash: "
		value = gets.chomp.to_s
		puts hash.has_value?(value)
	end
end

sc = MyClass.new
sc.create_hash
h = sc.newHash
sc.print_hashKey h
sc.print_hashValue h
sc.print_hash h
sc.isAKey h
sc.isAValue h

.......................

C:\BDT\AT02\Gualberto\Ruby\Day9>ruby practice4.rb
Insert the length of the hash: 3
Insert a key: a
Insert a value: 1
Insert a key: b
Insert a value: 2
Insert a key: c
Insert a value: 3
{"a"=>"1", "b"=>"2", "c"=>"3"}
The keys are: ["a", "b", "c"]
The values are: ["1", "2", "3"]
The hash is: {"a"=>"1", "b"=>"2", "c"=>"3"}
Insert a key to search in the hash: b
true
Insert a value to search in the hash: 7
false

###################################################


.......................

###################################################

.......................

###################################################

.......................

###################################################

.......................

###################################################

.......................

###################################################

.......................

###################################################

.......................