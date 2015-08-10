# libraries
When /^I go to the GGU Libaries page$/ do
 go_to_ggu_libraries
end

Then /^The Library page layout loads correctly$/ do
  verify_ggu_libraries
end

Then /^I should see the GGU Libaries page content$/ do
  verify_ggu_libraries
end