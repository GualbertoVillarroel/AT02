class Father
	@@money = 100
	def self.money
		@@money
	end
end
 
class Son_1 < Father
	def self.mount1
		moneySon1 = 10
		@@money = @@money-moneySon1
		moneySon1	
 	end
end
 
class Son_2 < Father
	def self.mount2
		moneySon2 = 25
		@@money -= moneySon2
		moneySon2
	end
end
 
class Son_3 < Father
	def self.mount3
		moneySon3 = 50
		@@money -= moneySon3
		moneySon3
 	end
end
 
puts"Father's money: #{Father.money}"
puts"The first son is taking: #{Son_1.mount1}"
puts"The second son is taking: #{Son_2.mount2}"
puts"The third son is taking: #{Son_3.mount3}"
puts"Father's money at the final: #{Father.money} "