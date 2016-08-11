module Greetings
	def morning
		puts"Hi friend"
	end

	def afternoon
		puts"Good Afternoon"
	end

	def night
		puts"Good night"
	end
end

module Bye
	def bye1
		puts"Good bye"
	end

	def bye2
		puts"See you later"
	end

	def bye3
		puts"Take care"
	end
end


class MyClass
	include Greetings
	include Bye
end

m = MyClass.new
m.morning
m.afternoon
m.night
m.bye1
m.bye2
m.bye3