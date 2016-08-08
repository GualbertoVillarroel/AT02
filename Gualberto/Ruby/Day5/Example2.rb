class Customer
	def initialize(id, name, addr)
		@cust_id = id
		@cust_name = name
		@cust_addr = addr
	end
	def display_details()
		puts"Customer id: #{@cust_id}"
		puts"Customer name: #{@cust_name}"
		puts"Customer address: #{@cust_addr}"
	end
	def display_name
        puts "Customer name: #{@cust_name}"
    end
	def change_name
		@cust_name = "Pepito"
	end
end

cust1 = Customer.new("1","Ana","Sopocachi,LP")
cust2 = Customer.new("2","Juan","Melchor,CBBA")

cust1.display_details()
cust2.display_details()
cust1.display_name
cust1.change_name
cust1.display_name
