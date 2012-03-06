Given /^There is a state called "([^"]*)"$/ do |name|
  State.create!(:name => name)
end
