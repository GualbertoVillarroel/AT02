class NewClass
	def newPerson		
		print"Insert the number of persons to register: "
		amountOfPersons = gets.chomp.to_i

		@hashPerson = Hash.new

		amountOfPersons.times do | name, id |
			puts"Insert a name for the user: "
			name = gets.chomp.to_s
			puts"Insert an ID for the user: "
			id = gets.chomp.to_i

			@hashPerson.store name,id
		end

		
	end

	def showHashPerson
		puts""
		puts"The hash is: "
		p @hashPerson
		puts""
	end

	def modifyHashPerson
		puts"The names in uppercase are:"
		@hashPerson.each{|name,id| puts "#{name.upcase()}"}
		
		puts"" 

		@hashPerson.each_with_index do |(name, id), index|
      		puts"#{name} is in the position [#{index}]"
		end

		puts""

		personsArray = Array.new
		puts"The array with the names in uppercase is:"
		@hashPerson.each{|name,id| personsArray.push(name.upcase())}
		puts personsArray
		
	end

	def bye
		puts""
		@hashPerson.each{|name,id| puts "Good Bye #{name}"}
	end
end

sc = NewClass.new
sc.newPerson
sc.showHashPerson
sc.modifyHashPerson
sc.bye