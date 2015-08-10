Given /^I load the Golden Gate University website$/ do
 go_to_ggu_homepage
end

When /^I go to GGU homepage$/ do
 verify_top_navigation_not_logged_in
 verify_ggu_homepage
end

Then /^I should not be logged in$/ do
  verify_not_logged_in
end


