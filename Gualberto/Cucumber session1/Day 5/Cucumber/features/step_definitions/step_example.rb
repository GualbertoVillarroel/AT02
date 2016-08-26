Given(/^a board like this:$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  @board = table.raw
end

When(/^([\w+]) plays in row (\d+), column (\d+)$/) do |row, col|
	row, col = row.to_i, col.to_i
    @board[row][col] = player
end

Then(/^the board should look like this:$/) do |expected_table|
	expected_table.diff!(@board)
  # table is a Cucumber::MultilineArgument::DataTable
end