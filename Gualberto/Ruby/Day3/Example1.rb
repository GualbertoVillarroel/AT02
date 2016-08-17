=begin
#Without Chomp
puts "What is your name"
name = gets
puts "Hi #{name} How are you?"

#---------------------

#With Chomp
puts "What is your name"
name = gets.chomp
puts "Hi #{name} How are you?"
=end

#The diference is that gets causes a newline instead gets.chomp show the line correctly

#---------------------

=begin
puts"Some Test".chomp(' Test') 		# => “Some"
puts"Some Test\r\n".chomp 			# => "Some Test"
puts"\tRobert Martin\r\n".strip 	# => "Robert Martin"
=end

#---------------------

=begin
puts"Give me a number: "
number = gets.chomp.to_i
bigger = number * 100
puts"A bigger number is #{bigger}"
=end

#---------------------


#puts"Give me a number: "
#number = gets.chomp.to_f
#puts"The floating number is : #{number}"
