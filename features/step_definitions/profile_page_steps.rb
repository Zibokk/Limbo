##Scenario: I go to http://nickcornovan.com and view the home page
When(/^I go to the profile page$/) do
  goto_profile_page
  resize_window_default
end

Then(/^should see the following content in each sections:$/) do |table|
  verify_profile_present_for_nick_cornovan
  verify_profile_section_information
  verify_programming_skills
  verify_database_skills
  verify_bug_tracking
  verify_platforms
end

##Scenario: Verify if I can click plus button and text level appear and after
When(/^I click plus button level text should appear and after second click disappear in the section programming$/) do 
  verify_buttons_programming_skills
end

##Scenario: Verify if I can click plus button and text level appear and after second click disappear in the database and bugtracking tools section
When(/^I click plus button level text should appear and after second click disappear in the section database and bugtracking tools$/) do 
  verify_buttons_data_bugtracking_skills
end

##Scenario: Verify if I can click plus button and text level appear and after second click disappear in the platforms section
When(/^I click plus button level text should appear and after second click disappear in the section platforms$/) do 
  verify_buttons_platforms_skills
end

## no other Step Definition beyound this point