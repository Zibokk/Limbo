## UnderGraduate

When /^I go to the GGU Undergraduate page$/ do
 go_to_ggu_undergraduatepage
end

Then /^I should see the GGU Undergraduate page content$/ do
  verify_ggu_undergraduatepage
end

When /^I go to the GGU Undergraduate Overview page$/ do
 go_to_ggu_undergraduateoverview
end

Then /^I should see the GGU Undergraduate Overview page content$/ do
  verify_ggu_undergraduateoverview
end

When /^I go to the GGU Undergraduate Enrollment page$/ do
  go_to_ggu_undergraduate_enrollment
end

Then /^I should see the GGU Undergraduate Enrollment page content$/ do
  verify_ggu_undergraduate_enrollment
end

When /^I go to the GGU Undergraduate Academic Programs page$/ do
  go_to_ggu_undergraduate_academic_program
 end

Then /^I should see the GGU Undergraduate Academic Programs page content$/ do
   verify_ggu_undergraduate_academic_program
end

When /^I go to the GGU Undergraduate Faculty page$/ do
go_to_ggu_undergraduate_faculty
end

Then /^I should see the GGU Undergraduate Faculty page content$/ do
  verify_ggu_undergraduate_faculty
end

When /^I go to the GGU Undergraduate Alumni page$/ do
 go_to_ggu_undergraduate_alumni
end

Then /^I should see the GGU Undergraduate Alumni page content$/ do
  verify_ggu_undergraduate_alumni
end

When /^I go to the GGU Undergraduate Student Services page$/ do
 go_to_ggu_undergraduate_student_services
end

Then /^I should see the GGU Undergraduate Student Services content$/ do
  verify_ggu_undergraduate_student_services
end

When /^I go to the GGU Undergraduate Career Students page$/ do
   go_to_ggu_undergraduate_career_services
end

Then /^I should see the GGU Undergraduate Career Students page content$/ do
  verify_ggu_undergraduate_career_services
end

When /^I go to the GGU Undergraduate News and Events page$/ do
 go_to_ggu_undergraduate_news_and_events
end

Then /^I should see the GGU Undergraduate News and Events page content$/ do
  verify_ggu_undergraduate_news_and_events
end

When /^I go to the GGU Undergraduate Contact page$/ do
 go_to_ggu_undergraduate_contact
end

Then /^I should see the GGU Undergraduate Contact page content$/ do
  verify_ggu_undergraduate_contact
end