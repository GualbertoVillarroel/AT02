class MyCar
	attr_writer :year
	attr_reader :year
	attr_writer :color
	attr_reader :color
	attr_accessor :model
	attr_reader :current_speed
	
	def initialize
		@current_speed = 0
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

c = MyCar.new
c.year = "2016"
puts "Year: #{c.year}"
puts "Color: #{c.color = "Black"}"
puts "Model: #{c.model = "Mustang"}"

puts "Initial speed: #{c.current_speed} mph"
c.speed_up(50)
c.brake(10)
c.car_off
