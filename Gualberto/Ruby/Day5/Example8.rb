class Item
	attr_accessor :item_name

	def initialize(quantity)
		@quantity = quantity
	end	

	def message
		puts"You have #{@quantity}: #{@item_name}"
	end
end

	item = Item.new(1)
	puts item.item_name = "radio"
	puts item.message