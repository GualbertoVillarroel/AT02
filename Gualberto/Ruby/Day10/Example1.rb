a = 1
case 
	 when a < 5 then puts "#{a} is less than 5"    
	 when a == 5 then puts "#{a} equals 5" #WARNING with = 
	 when a > 5 then puts "#{a} is greater than 5" 
end


a = 4
case a
 when 0..4 then puts "#{a} is less than 5"    
 when 5 then puts "#{a} equals 5" 
 when 6...10 then puts "#{a} is greater than 5" 
 else puts "unexpected value #{a} " 
end
