def customer_id name, customer_id
	@name = name
	@customer_id = customer_id

	#puts "Thanks to be our customer"  if customer_id > 100

	puts result = customer_id > 100? "Thanks to be our customer" : "Thanks"
	puts"#{@name}".upcase()
	puts"Hi #{@name.upcase()} You are our cutomer #{@customer_id} #{result}" 

end

=begin
def customer_id(name, customer_id)
	@name = name
	@customer_id = customer_id

	#puts "Thanks to be our customer"  if customer_id > 100

	puts result = customer_id > 100? "Thanks to be our customer" : "Thanks"
	puts"#{@name}".upcase()
	puts"Hi #{@name.upcase()} You are our cutomer #{@customer_id} #{result}" 

end
=end

customer_id "new", 101
#customer_id("new", 101)