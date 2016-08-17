module Convertions
   FIRST_DAY = "Sunday"
   def Convertions.milimeters_in_centimeters value
      result = value * 0.1
      puts "milimeters_in_centimeters: #{result}"
      return result
   end

   def Convertions.centimeters_in_meters value2
      result = value2 * 0.01
      puts "centimeters_in_meters: #{result}"
      return result
   end

   def Convertions.meters_to_kilometers value3
      result = value3 * 0.001
      puts "meters_to_kilometers: #{result}"
   end
end

#puts Convertions::FIRST_DAY
print"Insert a value in milimeters: "
v = gets.chomp.to_f

a = Convertions.milimeters_in_centimeters v

b = Convertions.centimeters_in_meters a

Convertions.centimeters_in_meters b