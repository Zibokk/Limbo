# alumni
When /^I go to the GGU Alumni page$/ do
 go_to_ggu_alumnipage
end

Then /^I should see the GGU Alumni page content$/ do
  verify_ggu_alumni
end

When /^I go to the GGU Alumni Giving page$/ do
 go_to_ggu_alumni_giving
end

When /^The GGU Alumni Giving page layout loads correctly$/ do
  verify_ggu_alumni_giving
end

Then /^I should see the GGU Alumni Giving page content$/ do
  verify_ggu_alumni_giving
end

When /^I go to the GGU Alumni Services & Benefits page$/ do
 go_to_ggu_alumni_services_and_benefits
end

Then /^I should see the GGU Alumni Services & Benefits page content$/ do
  verify_ggu_alumni_services_and_benefits
end

When /^I go to the GGU Alumni Contact page$/ do
 go_to_ggu_alumni_contact
end

Then /^I should see the GGU Alumni contact page content$/ do
  verify_ggu_alumni_contact
end