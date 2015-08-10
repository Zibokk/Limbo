When /^I go to the GGU Graduate page$/ do
 go_to_ggu_graduatepage
end

Then /^I should see the GGU Graduate page content$/ do
  verify_ggu_graduatepage
end

When /^I go to the GGU Graduate Overview page$/ do
 go_to_ggu_graduateoverview
end

Then /^I should see the GGU Graduate Overview page content$/ do
  verify_ggu_graduateoverview
end

When /^I go to the GGU Graduate Enrollment page$/ do
  go_to_ggu_graduate_enrollment
end

Then /^I should see the GGU Graduate Enrollment page content$/ do
  verify_ggu_graduate_enrollment
end

When /^I go to the GGU Graduate Academic Programs page$/ do
  go_to_ggu_graduate_academic_program
 end

Then /^I should see the GGU Graduate Academic programs page content$/ do
   verify_ggu_graduate_academic_program
end

When /^I go to the GGU Graduate Faculty page$/ do
go_to_ggu_graduate_faculty
end

Then /^I should see the GGU Graduate Faculty page content$/ do
  verify_ggu_graduate_faculty
end

When /^I go to the GGU Graduate International page$/ do
go_to_ggu_graduate_international
end

Then /^I should see the GGU Graduate International page content$/ do
  verify_ggu_graduate_international
end

When /^I go to the GGU Graduate Alumni page$/ do
 go_to_ggu_graduate_alumni
end

Then /^I should see the GGU Graduate Alumni page content$/ do
  verify_ggu_graduate_alumni
end

When /^I go to the GGU Graduate Student Services page$/ do
 go_to_ggu_graduate_student_services
end

Then /^I should see the GGU Graduate Student Services content$/ do
  verify_ggu_graduate_student_services
end

When /^I go to the GGU Graduate Career Services page$/ do
   go_to_ggu_graduate_career_services
end

Then /^The Graduate Career services page layout loads correctly$/ do
  verify_ggu_graduate_career_services
end

Then /^I should see the GGU Graduate Career Services page content$/ do
  verify_ggu_graduate_career_services
end

When /^I go to the GGU Graduate News and Events page$/ do
 go_to_ggu_graduate_news_and_events
end

Then /^I should see the GGU Graduate News and Events page content$/ do
  verify_ggu_graduate_news_and_events
end

When /^I go to the GGU Graduate Contact page$/ do
 go_to_ggu_graduate_contact
end

Then /^I should see the GGU Graduate Contact page content$/ do
  verify_ggu_graduate_contact
end