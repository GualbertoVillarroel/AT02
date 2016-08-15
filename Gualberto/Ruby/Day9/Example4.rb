cars = {
'altima' => 'nissan',
'camry' => 'toyota',
'rx7' => 'mazda'
}
puts cars['rx7'] 					#  =>   mazda

puts("")

elements = Hash.new  			# or {}
elements['H'] = 'Hydrogen' 		#associate the key 'H' to the value 'Hydrogen'
elements['He'] = 'Helium'
elements['Li'] = 'Lithium'
p elements['H']      			 # prints "Hydrogen"
p elements.length    			 # prints 3
p elements.values     			 # prints ["Hydrogen", "Helium", "Lithium"]
p elements.keys       			 # prints ["H", "He", "Li"]
p elements            			 # prints {"Li"=>"Lithium", "He"=>"Helium", "H"=>"Hydrogen"}

puts("")

salaries = {"bob" =>10.9,
			"larry"=>7.5,
			"jimmy"=>6.0,
			"jerry"=>6.5}
salaries.inspect
mySalaryArray = salaries.select{|name,salary| salary > 7.0}
p mySalaryArray #prints  [["larry", 7.5], ["bob", 10.9]]

puts("")

toppings = Hash["pancakes","syrup","Pizza","Pepper","Cereal","Sugar"]
p toppings

puts("")

#Simbols
my_hash = {
  :a => "Artur",
  :l => "Linda",
  :r => "Ryan",
  :z => "Zach"
}
p my_hash

puts("")

#Hash shortcut
my_hash = {
  a:  "Artur",
  l:  "Linda",
  r:  "Ryan",
  z:  "Zach"
}
p my_hash
