Then /^I should see the navigation options the Golden Gate University homepage$/ do
verify_not_logged_in  
end

When /^I log into Golden Gate University as a student$/ do
  login_to_ggu_as_student
end



###### reuse scaps below
When /^(?:|I )submit valid Change.org login credentials$/ do
  #home_page
  login_as_qa_user
  #verify_login_as_user
end

Given /^(?:|I )(?:log in|am logged in) as a site admin$/ do
  home_page
  login_as_qa_user
  verify_login_as_site_admin
end

When /^(?:|I )(?:log in|am logged in) as a petition creator$/ do
  login_with_change_account
  login_form(Blackbox.test_variables.petition_creator.email,'Testing123')
  login_submit
end

Then /^(?:|I )should be logged in$/ do
  # verify_login_as_user('Quank Aaron')
end

Then /^(?:|I )should be logged in as a site admin$/ do
  verify_login_as_site_admin
end

When /^(?:|I )logout$/ do
  home_page
  logout
end

Then /^I should see the organization signup success message$/ do
  verify_organization_signup_message
end

When /^I log in as an action alert admin staff memeber$/ do
login_as_qa_action_alerts_admin_staff_member
end
