Given(/^I have a calculator$/) do
  @calculator = Calculator.new
end

When(/^I add (\d+) and (\d+)$/) do |arg1, arg2|
  @result = @calculator.add arg1.to_i, arg2.to_i
end

Then(/^the result should be (\d+)$/) do |arg1|
  expect(@result).to eq(arg1.to_i)
end
