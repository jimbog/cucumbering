Given(/^I have the following elements$/) do |table|
  table.hashes.each { |element| Store.add element }
end

When(/^I find an element with id (\d+)$/) do |id|
  @result = Store.find_by_id id
  puts "the result is #{@result}"
end

Then("I should get $name") do |name|
 expect(@result["name"]).to eq(name)
end

Transform /table:id,name/ do |table|
  table.map_column! (:id) { |cell| cell.to_i }
end
