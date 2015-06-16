##Scenario: Verify that I can buy automaticaly items from amazon

When(/^I go to amazon website$/) do
  visit('http://www.amazon.com')
  resize_window_default
end

And(/^I click button sign in$/) do
  find('#nav-link-yourAccount').click
  find(:xpath, "//*[@class='nav-action-inner'][contains(text(),'Sign in')]").click
end

And(/^I enter valid username and password for amazon account$/) do
  fill_in('email', :with => 'nick.cornovan@gmail.com')
  fill_in('password', :with => 'parenco')
  click_button('Sign in using our secure server')
end

Then(/^I should see admin panel with text "(.*?)"$/) do |acc_name_owner|
  page.should have_content(acc_name_owner)
end

Then(/^I search item "(.*?)"$/) do |item_search|
  fill_in('field-keywords', :with => item_search)
  click_button('Go')
  find(:xpath, "//*[contains(text(),'LEGO Cuusoo 21110 Research Institute')]").click
end

And(/^Verify Item text "(.*?)"$/) do |item_text|

	if page.should have_content(item_text) and page.should have_content('$34.99')     
      puts true
    else
      puts false
    end   
end

# and page.should have_content('In Stock')
#<div id="availability" class="a-section a-spacing-none">
#<span class="a-size-medium a-color-success"> In Stock. </span>
#<div id="merchant-info" class="a-section a-spacing-mini"> Ships from and sold by Amazon.com. Gift-wrap available. </div>


# field-keywords
# //*[@id='twotabsearchtextbox']
# find_button('Send').click
# click_on 'Go'
##//*[@id='a-autoid-1-announce'][contains(text(),'Buy now with 1-Click®')] (buy one click)