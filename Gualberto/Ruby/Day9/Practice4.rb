class MyClass
	attr_reader :newHash

	def create_hash
		print"Insert the length of the hash: "
		num_hash = gets.chomp.to_i

		@newHash = Hash.new
		
		num_hash.times do | key, value |  
			print"Insert a key: "
			key = gets.chomp.to_s
			print"Insert a value: "
			value = gets.chomp.to_s

			@newHash.store key,value
		end

		p @newHash
	end

	def print_hashKey hash
		puts"The keys are: #{hash.keys}"
	end

	def print_hashValue hash
		puts"The values are: #{hash.values}"
	end

	def print_hash hash
		puts"The hash is: #{hash}"
	end

	def isAKey hash
		print"Insert a key to search in the hash: "
		key = gets.chomp.to_s
		puts hash.has_key?(key)

	end
	def isAValue hash
		print"Insert a value to search in the hash: "
		value = gets.chomp.to_s
		puts hash.has_value?(value)
	end
end

sc = MyClass.new
sc.create_hash
h = sc.newHash
sc.print_hashKey h
sc.print_hashValue h
sc.print_hash h
sc.isAKey h
sc.isAValue h