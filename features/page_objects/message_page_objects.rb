##Scenario: Verify that user can send message to administrator
def enter_valid_name
  fill_in('name', :with => 'Nick')
end

def enter_valid_email
  fill_in('email', :with => '1pimp@rambler.ru')
end

def enter_valid_website
  fill_in('website', :with => 'facebook.com')
end

def enter_text_message
  fill_in('message', :with => 'Test Automation 2015')
end

def click_button_send_message
  click_button('Send Message')
end

def verify_confirmation_message
  page.should have_content("Your message has been sent. Thank you!")
  if find_field('name').visible?
    ##find(:xpath, "//*[@id='about']").visible? 
    puts true
  end
end

##Scenario: Verify that a user can not send message with blank name field

def leave_blank_name
  fill_in('name', :with => '')
end

def verify_name_error_message
  page.should have_content("Please enter your name.")
end

##Scenario: Verify that a user can not send message with blank email field

def leave_blank_email
  fill_in('email', :with => '')
end

def verify_email_error_message
  page.should have_content("Please enter valid e-mail.")
end

##Scenario: Verify that a user can not send message with blank text area

def leave_blank_text_message
  fill_in('message', :with => '')
end

def verify_text_error_message
  page.should have_content("Please enter your message.")
end

##Scenario: Verify that a user can send message with blank website field

def leave_blank_website
  fill_in('website', :with => '')
end
