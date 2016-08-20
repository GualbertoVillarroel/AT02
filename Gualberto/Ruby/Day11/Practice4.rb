class RandomGenerator	
	def testingFile
		openFile = File.open("random_data.txt", 'a+')
		openFile.truncate(0)

		100.times do |index|
			openFile.write(random)
		end

		openFile.close

		openFile = File.open("random_data.txt")
		puts openFile.read
	end


	def random
		data = "USER_#{rand(1..100)}|" + "PASS_#{rand(1..100)}|" + randomDate + "|" + randomCountry + "\n"
	end


	def randomDate
		date = rand(1..12).to_s + "/" + rand(1..30).to_s + "/" + rand(2000..2016).to_s
	end


	def randomCountry
		any_city =  rand(1..9)
		case any_city
			when 1 then city = "Cochabamba"
			when 2 then city = "Santa Cruz"
			when 3 then city = "La Paz" 
			when 4 then city = "Sucre"
			when 5 then city = "Oruro"
			when 6 then city = "Tarija"
			when 7 then city = "Beni"
			when 8 then city = "Pando"
			when 9 then city = "Potosi"
		end

		return city
	end

end

sc = RandomGenerator.new
sc.testingFile