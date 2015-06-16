##Scenario: Verify social media buttons
# def click_social_button

#  $i = 0
#  $num = 6
#  bug_tracking_data = [nil,"facebook", "google", "twitter", "linkedin", "pinterest", "dribbble"]
#  level_bug_data = [nil,'Email or Phone', 'Sign in to continue to Google+', 'See what\"s happening right now.', 'LinkedIn', 'About Pinterest', 'Dribbble is show and tell for designers.']
 
#  while $i < $num  do

#     $i +=1
#     if $i == 1 || 2 || 3 || 4 || 5 || 6 
#       $xpath = "//*[@id='social']//a[@class='#{bug_tracking_data[$i]}']"
#     end
#     find(:xpath, $xpath).click
#     ##page.execute_script "window.close();"
#     if page.should have_content("#{level_bug_data[$i]}") ##page.should has_content?("#{level_bug_data[$i]}")
#       puts "'#{bug_tracking_data[$i]}' = true"
#     elsif 
#       puts "'#{bug_tracking_data[$i]}' = false"
#     end
#   end
# end

# no other Page Objects beyound this point


@wip
#Scenario:Scenario: Verify if I click facebook icon I have to naviagate to Nick's facebook page
def click_button_fb_icon
 	find(:xpath, "//*[@id='social']//a[@class='facebook']").click
  sleep 5
end 

def verify_nick_fb_page
  find(:xpath, "//a[@href='https://www.facebook.com/recover/initiate']").click
  ##find(:xpath, "//input[@id='email']").visible?
  #find('#email').should have_text 'Email or Phone'
  #find(:xpath, "//input[@id='email']")
  ##expect(page).to have_content('Cornovan Nick')
  ##page.should have_content('Cornovan Nick')
	##find(:xpath, ".//*[@id='email']").visible?
	# page.should have_content("Password")
	# page.should have_content("Cornovan Nick")
	##expect(page).to have_content('Password')
	##find_link('Forgot your password?').visible?
	##page.should have_text 'Email or Phone'

end

# def click_button_google_icon
#  	find(:xpath, "//*[@id='social']//a[@class='google']").click
# end 

# def verify_nick_google_page
# 	##page.should have_content("One account. All of Google.")
# 	##page.should have_content("Sign in to continue to Google+")
# 	##page.has_content? 'ndcwlcjcjlvcjeiv'
# 	##page.should have_content 'One account. All of Google'
# 	##page.has_selector? '#main'
# 	##page.should have_selector '#Email'
# 	##page.has_button?('#test')
# 	##find('.need-help', :visible => true)
# end

