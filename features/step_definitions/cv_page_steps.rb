##Scenario: Verify that the cv page has the correct content
When(/^I go to cv page$/) do
  goto_cv_page
end

Then(/^I should see on the cv page section:$/) do |table|
  verify_cv_present_for_technical_skills
  verify_programming_skills
  verify_database_skills
  verify_bug_tracking
  verify_platforms
  verify_cv_employment_skills
end
## no other Step Definition beyound this point