##Scenario: Verify that user can send message to administrator
When(/^I go to contacts page to send a message to the admin$/) do 
  goto_contacts_page

end

And(/^I enter valid credentials and submit the following:$/) do |table|  
  enter_valid_name
  enter_valid_email
  enter_valid_website
  enter_text_message
  click_button_send_message
end

Then(/^I submit and should see a thank you message$/) do
  verify_confirmation_message
end

##Scenario: Verify that a user can not send message with blank name field


When (/^I enter valid credentials and leave blank name:$/) do |table|
  leave_blank_name
  enter_valid_email
  enter_valid_website
  enter_text_message
  click_button_send_message
end

Then (/^I submit and should see name error message$/) do
  verify_name_error_message
end

##Scenario: Verify that a user can not send message with blank email field


When (/^I enter valid credentials and leave blank email:$/) do |table|
  enter_valid_name
  leave_blank_email
  enter_valid_website
  enter_text_message
  click_button_send_message
end

Then (/^I submit and should see email error message$/) do
  verify_email_error_message
end

##Scenario: Verify that a user can not send message with blank text area


When (/^I enter valid credentials and leave blank text area:$/) do |table|
  enter_valid_name
  enter_valid_email
  enter_valid_website
  leave_blank_text_message
  click_button_send_message
end

Then (/^I submit and should see text error message$/) do
  verify_text_error_message
end

##Scenario: Verify that a user can send message with blank website field


When (/^I enter valid credentials and leave blank website field:$/) do |table|
  enter_valid_name
  enter_valid_email
  leave_blank_website
  enter_text_message
  click_button_send_message
end

Then (/^I submit and should see a confirmation message$/) do
  verify_confirmation_message
end