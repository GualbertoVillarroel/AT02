class Base  
 	def initialize
         @value= 0
 	end
 	def any
         @value= 10
 	end
 	 def some
         @value
 	end
 end  

def singletn_example
	@singletn_example ||= Base.new
end

 p singletn_example.any 					# Output => 10  
 p singletn_example.object_id				# Output => 20402200  
 p singletn_example.some					# Output => 10 
 p singletn_example.object_id 				# Output => 20402200  
 p Base.new.object_id 						# Output => 20402040  
 p Base.new.some 							# Output => 0
