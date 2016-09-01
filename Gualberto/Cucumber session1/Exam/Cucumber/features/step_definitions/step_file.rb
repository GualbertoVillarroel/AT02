Given(/^user$/) do
  expect($app_user).to_not be nil
end

When(/^insert password$/) do
  expect($app_pass).to eq("admin123")
end

Then(/^I see "(.*)"$/) do |arg1|
  puts "Welcome to the simulate reservation!"
end


When(/^I select a flight from (\w+) to (\w+)$/) do |from,to|
  @from = from
  @to = to
end

When(/^I select the date (.*)$/) do |date|
  @date = date
end

When(/^I select the flight (.*)$/) do |flight|
  @vuelo = flight
end

Then(/^The availability should be (\w+)$/) do |available|
  @available = available

  hashy = {
		    'From' => @from,
		    'to' => @to,
		    'date' => @date,
		    'flight' => @vuelo,
		    'available' => @available
		  }
	
  expect(Flight.get_list_of_flights(hashy)).to be(true)

end