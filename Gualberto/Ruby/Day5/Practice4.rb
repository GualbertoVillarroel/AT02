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