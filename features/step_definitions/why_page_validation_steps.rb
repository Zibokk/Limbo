## WHY GGU
When /^I go to the GGU WHY page$/ do
 go_to_ggu_whyggu
end

When /^The Why GGU page layout loads correctly$/ do
  verify_ggu_pageload
end

Then /^I should see the WHY GGU page content$/ do
  verify_ggu_whyggupage
end

When /^I go to the GGU WHY GGU Overview page$/ do
 go_to_ggu_whyggu_overview
end

Then /^I should see the Why GGU Overview Page content$/ do
  verify_ggu_whyggu_overview_page
end

When /^I go to the GGU WHY GGU Our Academics page$/ do
 go_to_ggu_whyggu_academics
end

Then /^I should see the Why GGU Our Academics Page$/ do
  verify_ggu_whyggu_academics_page
end

When /^I go to the GGU WHY GGU Services page$/ do
 go_to_ggu_whyggu_services
end


Then /^I should see the Why GGU Services Page content$/ do
  verify_ggu_whyggu_services_page
end

When /^I go to the GGU WHY GGU Online Learning page$/ do
 go_to_ggu_whyggu_onlinelearning
end

Then /^I should see the Why GGU Online Learning Page content$/ do
  verify_ggu_whyggu_onlinelearning_page
end

When /^I go to the GGU WHY GGU International page$/ do
 go_to_ggu_whyggu_international
end

Then /^I should see the Why GGU International Page content$/ do
  verify_ggu_whyggu_international_page
end

When /^I go to the GGU WHY GGU Information Request Form page$/ do
 go_to_ggu_whyggu_information_request_form
end

Then /^I should see the Why GGU Information Request Form Page content$/ do
  verify_ggu_whyggu_information_request_form_page
end

When /^I go to the GGU WHY GGU Apply page$/ do
 go_to_ggu_whyggu_apply 
 end

Then /^I should see the Why GGU Apply Page content$/ do
   verify_ggu_wwhyggu_apply
end

When /^I go to the GGU WHY GGU News & Events page$/ do
 go_to_ggu_whyggu_news_and_events
end

Then /^I should see the Why GGU News & Events Page content$/ do
  verify_ggu_whyggu_news_and_events
end

Then /^I should see the Why GGU page$/ do
 verify_ggu_whyggupage
end