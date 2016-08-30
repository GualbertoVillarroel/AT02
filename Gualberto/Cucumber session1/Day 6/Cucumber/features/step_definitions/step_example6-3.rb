Given(/^I have pushed my card in the slot$/) do
  # Write code here that turns the phrase above into concrete actions
end

When(/^I enter my PIN$/) do
  # Write code here that turns the phrase above into concrete actions
end

When(/^I press "([^"]*)"$/) do |arg1|
  # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see the main menu$/) do
  # Write code here that turns the phrase above into concrete actions
end



Given /^I have authenticated with the correct PIN$/ do
steps %{
And I have pushed my card in the slot
And I enter my PIN
And I press "OK"
}
end
