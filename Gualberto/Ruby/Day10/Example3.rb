p /something/.match('something else there')		#=> #<MatchData " something ">

puts""

a = "HELLO" 
case a 
	when /^[a-z]*$/; print "Lower case\n" 
	when /^[A-Z]*$/; print "Upper case\n" 
	else; print "Mixed case\n" 
end

