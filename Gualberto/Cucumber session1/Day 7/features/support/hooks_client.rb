Before('@outline') do |scenario|
	puts "I am running an outline scenario: #{scenario.name} \n"
end

Before('@normal') do |scenario|
	puts "I am running a normal scenario: #{scenario.name} \n"
end

Before('@normal, @outline') do
	puts "CUSTOMER SEARCH TEST \n"
end

After('@outline', '~@normal') do 
 	puts "SEARCHIN.. \n"
end

After('@outline') do |scenario|
	puts "I finished running the outline scenario \n"
	if scenario.failed?
		puts "Faile #{scenario.exception.message}"
	end
end

After('@normal') do |scenario|
	puts "I finished running a normal scenario \n"
	if scenario.failed?
		puts "Faile #{scenario.exception.message}"
	end
end
