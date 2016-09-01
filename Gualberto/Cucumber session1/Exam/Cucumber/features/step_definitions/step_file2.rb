Given(/^user is ok$/) do
 
end

Given(/^I have a (\w+)$/) do |item|
  @item = item
end

When(/^I search the item$/) do
  @bol = Item.exists_item(@item,$item_list)
	
end

Then(/^The message should be item exists$/) do
  expect(@bol).to be(true)
end



Then(/^The message should be item doesn't exist$/) do
  expect(@bol).to be(false)
end