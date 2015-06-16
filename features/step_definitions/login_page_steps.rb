##Scenario: I want to Log In as a administrator in website nickcornovan.com and select field Appearance
When(/^I go to LogIn page$/) do
  goto_login_page
  resize_window_default
end

And (/^I enter valid username and password and submit:$/) do |table|
  enter_valid_username
  enter_valid_password
  click_button_login
end

Then(/^I should see admin panel with text Welcome to WordPress$/) do
  verify_welcome_text
end

When(/^I click button log out$/) do
  log_out
end

Then(/^I shoud exit from the admin panel and I should see "([^"]*)"$/) do |content_logout|
  page.should have_content(content_logout) 
end
