##Scenario: Verify that user can navigate to each menu page
When(/^I go to profile page$/) do
  goto_profile_page
end

And(/^I click on cv page$/) do
  click_cv_page
end

And(/^I Should see cv page$/) do
  verify_cv_employment_content
end