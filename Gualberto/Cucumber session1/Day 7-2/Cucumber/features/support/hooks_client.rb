Before('@outline') do |scenario|
	puts "I am running an outline scenario: #{scenario.name} \n"
end

Before('@normal') do |scenario|
	puts "I am running a normal scenario: #{scenario.name} \n"
end

After('@outline') do |scenario|
	if scenario.failed?
		puts "Faile #{scenario.exception.message}"
	else
		puts "I finished running the outline scenario \n"
	end
end

After('@normal') do |scenario|
	if scenario.failed?
		puts "Faile #{scenario.exception.message}"
	else
		puts "I finished running a normal scenario \n"
	end
end

Before('@outline','@normal') do
	puts "CUSTOMER SEARCH TEST \n"
end

After('@outline','~@normal') do 
 	puts "SEARCHIN.. \n"
end


