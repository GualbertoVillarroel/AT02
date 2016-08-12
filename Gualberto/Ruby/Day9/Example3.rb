alpha = ["a","b","c","d","e","f"]
puts "pop element = " + alpha.pop   
puts alpha.inspect       # ["a"," b", "c", "d", "e"]

puts" "

alpha = ["a","b","c"]   
alpha.push("x","y","z")
puts alpha.inspect      # ["a", "b", "c", "x", "y", "z"]

puts" "

alpha = ["a","b","c","d","e","f"]
puts "shift element = " + alpha.shift
p alpha     # ["b", "c", "d", "e", "f"]

puts" "

alpha = ["a","b","c"]
alpha.unshift("x","y","z")
p alpha      # ["x", "y", "z", "a", "b", "c"]
