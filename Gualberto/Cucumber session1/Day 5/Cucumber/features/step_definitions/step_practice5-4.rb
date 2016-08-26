Given(/^I am at Jala Foundation$/) do
  
end

Given(/^I have BDT class$/) do
  
end

Given(/^I have to do some tasks:$/) do |table|
   @task_table = table.raw
end

When(/^I work on (\w+) tasks$/) do |task|
  @task_table[0][1] = task

end

Then(/^The task's table should look:$/) do |expected_table|
  expected_table.diff!(@task_table)
end