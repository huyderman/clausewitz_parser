require 'clausewitz_parser'
require 'rspec/expectations'

Before do
  @parser = ClausewitzParser::ClauswitzParser.new
end

After do
  unless @output
    puts @parser.failure_reason
  end
  @input = nil
  @output = nil
end

Given(/^([a-z0-9_]+\.txt)$/) do |file|
  path = "#{__dir__}/../fixtures/#{file}"
  @input = File.read(path, encoding: 'iso-8859-1')
end

When(/^I parse the file$/) do
  @output = @parser.parse @input
end

Then(/^the result should be something$/) do
  @output.should_not be_nil
end
Then(/^there should be (\d+) item$/) do |i|
  @output.value.count.should eq(i.to_i)
end
When(/^the key of entry (\d+) should be '(\w+)'$/) do |i,key|
  @output.value[i.to_i].key.should eq(key)
end