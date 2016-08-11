var1 = 10
var2 = 20
var3 = 30
T = true
F = false

puts "---Arithmetic operators---"
puts "var1 + var2 = #{var1 + var2}"
puts "var1 - var2 = #{var1 - var2}"
puts "var1 * var2 = #{var1 * var2}"
puts "var2 / var1 = #{var2 / var1}"
puts "var2 % var1 = #{var2 % var1}"
puts "var1 ** var2 = #{var1 ** var2}"

puts "---Comparison operators---"
puts "var1 == var2 = #{var1 == var2}"
puts "var1 != var2 = #{var1 != var2}"
puts "var1 > var2 = #{var1 > var2}"
puts "var1 < var2 = #{var1 < var2}"
puts "var1 >= var2 = #{var1 >= var2}"
puts "var1 <= var2 = #{var1 <= var2}"
puts "var1 <=> var2 = #{var1 <=> var2}"
puts "(var1...var3) === var2 = #{(var1...var3) === var2}"
puts "var1.eql?(7.0) = #{var1.eql?(7.0)}"

puts "---Assignment operators---"
puts "var1 = var2 = #{var1 = var2}"
puts "var1 += var2 = #{var1 += var2}"
puts "var1 -= var2 = #{var1 -= var2}"
puts "var1 *= var2 = #{var1 *= var2}"
puts "var1 /= var2 = #{var1 /= var2}"
puts "var1 %= var2 = #{var1 %= var2}"
puts "var1 **= var2 = #{var1 **= var2}"

puts "---Logical operators---"
puts "T and F = #{T and F}"
puts "T or F = #{T or F}"
puts "T && F = #{T && F}"
puts "T || F = #{T || F}"
puts "!F = #{!F}"
puts "notF = #{notF}"