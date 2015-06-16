When(/^I navigate to the google page$/) do
  goto_google_page_as_mobile
end

When(/^I search for Accenture using the search bar$/) do
  search_word_accenture
  click_button_search
end

Then(/^the search results contain "([^"]*)"$/) do |arg1|
  verify_search_result
end