Then /^I should see "([^"]*)" within "([^"]*)"$/ do |content, parent|
  within(parent) do
    should have_content(content)
  end
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

Given /^"([^"]*)" can view the "([^"]*)" project$/ do |user, project|
  Permission.create!(:user => User.find_by_email!(user),
                     :thing => Project.find_by_name!(project),
                     :action => "view")
end
