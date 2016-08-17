hash = ['a','b','c'].each_with_index {|a,index| puts index}
puts""

hash.each_with_index do |(key, value), index|
	puts index
end

puts""

$i = 0
$num = 5

while $i < $num  do
   puts("Inside the loop i = #$i" )
   $i +=1
end

puts""


$i = 0
$num = 5
begin
   puts("Inside the loop i = #$i" )
   $i +=1
end while $i < $num
