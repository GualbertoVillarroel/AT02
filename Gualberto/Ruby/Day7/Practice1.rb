def method_block
	@result = 100
	yield
	puts "The value now is #{@result}"
end


method_block do
	@result = @result == 100 ? @result + 11 : 1000*5
	puts "The value was changed into the block"
	
end 


