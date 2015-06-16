def enter_valid_username
  fill_in('log', :with => 'zibok')
end

def enter_valid_password
  fill_in('pwd', :with => 'nicusor1988')
end

def click_button_login
  click_button('wp-submit')
end

def verify_welcome_text
  page.should have_content('Welcome to WordPress')
end

def log_out
  find('#wp-admin-bar-my-account').click
  find(:xpath, "//a[contains(text(),'Log Out')]").click
  
end