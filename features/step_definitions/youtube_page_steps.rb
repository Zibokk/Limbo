##Feature: Search for Videos on YouTube
Given(/^I am on the YouTube home page$/) do
visit 'http://www.youtube.com'
resize_window_default
end
When(/^I search for "(.*?)"$/) do |search_term|
fill_in 'search_query', :with => search_term
click_on 'search-btn'
end
Then(/^videos of large rodents are returned$/) do
page.should have_content 'Capybara World'
end


When(/^I search for results within a scope$/) do

  within('#yt-masthead-container') do
    all('.yt-lockup-title').each do |elem|
     puts elem.text
    end
  end
end

##Scenario: Validate youtube 'pause' control
When(/^I navigate to capybara youtube video$/) do
	find(:xpath, "//a[contains(text(),'Visiting Garibaldi ROUS, the Pet Capybara')]").click
end

And(/^I click button pause$/) do
	find(:xpath, "//div[@class='ytp-button ytp-button-pause']").click
end

Then(/^youtube video stop$/) do	
	find(:xpath, "//div[@class='ytp-button ytp-button-play']").visible?
end