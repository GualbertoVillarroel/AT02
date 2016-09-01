module Item
	def Item.load
	##load static list users and password into a hash
		@static_items = ["laptop", "smartphone", "tablet"]
		    
	end

	def Item.exists_item(item,array)
		@bool = false
			array.each do |val|
				if val ==  item
					@bool = true
				end
			end
		return @bool
	end

end