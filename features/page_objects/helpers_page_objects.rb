def do_nothing
## Use me when an AND has no action
end

## Use me when you want to go to the sites home page
def goto_profile_page
	visit('http://nickcornovan.com')
end

## Use me when you want to go to the sites home page
def goto_cv_page
	visit('http://nickcornovan.com/cv')
end

## Use me when you want to go to the sites login page
def goto_login_page
	visit('http://nickcornovan.com/wp-admin')
end

## Use me when you want to go to the sites contacts page
def goto_contacts_page
	visit('http://nickcornovan.com/contacts')
end

## Use me when you want to go to the sites contacts page
def goto_google_page
	visit('https://www.google.com')
end

def goto_google_page_as_mobile
	goto_google_page
	resize_window_to_mobile
end

def resize_window_to_mobile
  Capybara.current_session.driver.browser.manage.window.resize_to(640, 480)
end

def resize_window_to_tablet
  Capybara.current_session.driver.browser.manage.window.resize_to(960, 640)
end
 
def resize_window_default
  	Capybara.current_session.driver.browser.manage.window.resize_to(1366, 768)
end

def tear_down
  resize_window_default
end