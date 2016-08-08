class Person
	attr_writer :name
	attr_reader :name
	attr_accessor :message
#=begin
	def show
		puts"Hi #{@name}"
	end
#=end
end

per = Person.new
per.name = "Gualy"
per.show

#puts "Hi #{per.name}"

per.message = "Have a nice day"
puts per.message
	