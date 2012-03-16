Then /^I should see "([^"]*)" within "([^"]*)"$/ do |content, parent|
  within(parent) do
    should have_content(content)
  end
end

Then /^I should not see "([^"]*)" within "([^"]*)"$/ do |content, parent|
  within(parent) do
    should_not have_content(content)
  end
end

Given /^I follow "([^"]*)" within "([^"]*)"$/ do |link, parent|
  within(parent) do
    click_link link
  end
end

When /^(?:|I )select "([^"]*)" from "([^"]*)"$/ do |value, field|
  select(value, :from => field)
end

Given /^there is a project called "([^"]*)"$/ do |name|
  @project = Factory(:project, :name => name)
end

Given /^I am on the homepage$/ do
  visit "/"
end

When /^I follow "([^"]*)"$/ do |link|
  click_link link
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in field, :with => value
end

When /^I press "([^"]*)"$/ do |button|
  click_button(button)
end

Then /^I should see "([^"]*)"$/ do |content|
  page.should have_content(content)
end

Then /^I should not see "([^"]*)"$/ do |content|
  page.should_not have_content(content)
end

Then /^I should be on the project page for "([^"]*)"$/ do |name|
  project_path(Project.find_by_name!(name))
end

When /^I check "([^"]*)"$/ do |checkbox|
  check(checkbox)
end

Then /^show me the page$/ do
  save_and_open_page
end
