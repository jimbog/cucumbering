Given(/^I have a calculator$/) do
  @calculator = Calculator.new
end

When(/^I add (\d+) and (\d+)$/) do |num1, num2|
  @result = @calculator.add num1, num2
end

Then(/^the result should be (\d+)$/) do |expected|
  expect(@result).to eq expected
end

Transform /(^\d+$)/ do |number|
  number.to_i
end
