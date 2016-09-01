Before do |scenario|
  	$varFlights = Flight.get_list_of_flights(Flight.load_flight)
end

Before do |scenario|
  	$item_list = Item.load
end

After('@posi') do
	puts "RUNNING POSITIVE CASES"
end

After('@nega') do
	puts "RUNNING NEGATIVE CASES"
end