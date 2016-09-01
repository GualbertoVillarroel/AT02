Given(/^Admin user is defined$/) do
	expect($app_user).to_not be nil
end

When(/^I insert user (\w+)$/) do |user|
	@bool
end

Then(/^I verify that the user exists$/) do
  expect(@bool).to be(true)
end

Then(/^I verify that the user doesn't exists$/) do
  expect(@bool).to be(false)
end