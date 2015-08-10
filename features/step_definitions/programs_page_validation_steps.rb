## Programs

When /^I go to the GGU Programs page$/ do
go_to_ggu_programs
end

Then /^I should see the GGU Programs Page content$/ do
  verify_ggu_programspage
end

When /^I go to the GGU Programs Courses and Schedules page$/ do
 go_to_ggu_programs_course_schedule
end

Then /^I should see the GGU Programs Courses and Schedules page content$/ do
  verify_ggu_programs_course_schedule
end

When /^I go to the GGU Programs Course Catalog page$/ do
 go_to_ggu_programs_course_schedule
end

Then /^I should see the GGU Programs Course Catalog page content$/ do
  verify_ggu_programs_course_schedule
end