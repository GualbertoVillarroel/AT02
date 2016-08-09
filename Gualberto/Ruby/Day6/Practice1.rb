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