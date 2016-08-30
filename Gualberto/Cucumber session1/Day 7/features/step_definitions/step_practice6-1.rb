Given(/^I search user (\w.*)$/) do |user|
  #@username = user
  var = client.client_id
  result = var.has_key?(user)
  expect(result).to be true
end

When(/^I insert id (\d+)$/) do |id|
  var = client.client_id
  result = var.has_value?(id)
  expect(result).to be true
end

Then(/^I have priced (\d+)$/) do |price|
  var = client.priced
  result = var.has_value?(price)
  expect(result).to be true
end