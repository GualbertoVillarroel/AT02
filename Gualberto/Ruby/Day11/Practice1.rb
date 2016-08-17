require	'singleton'
class MyClass  
	include Singleton
	attr_accessor :user
	attr_reader :visitors
	attr_reader :hash

	def initialize		  
		@user = "Guest"
		@msg = "Welcome to the city"
		@visitors = 0
		@hash = Hash.new 

		@hash.store @user, @msg
		p @hash
		puts"Number visitor: #{@visitor}"
	end

	def info


		$bool = false
		
		begin
		  	print"Insert an user: "
			var_user = gets.chomp.to_s
			print"Insert message: "
			var_msg = gets.chomp.to_s
				
			@user = var_user
			@visitors += 1
			@hash.store var_user, var_msg

			puts"Do you want to add other user? y/n"
			a = gets.chomp.to_s
			if a == "n" then $bool = true end

		end while $bool == false


		
	end
end

sc = MyClass.instance
sc.info
c = MyClass.instance.user
puts "the last user defined is: " + c