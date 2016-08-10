def calculation seconds
	min = seconds/60
	hours= min/60
	
	return min, hours
end
 
print"Insert the seconds:"
sec = gets.chomp.to_i

minutes, hours = calculation sec
puts "Minutes: #{minutes}, Hours: #{hours} "
