
Feature: Programs pages

Background: As a user I should be able to view the Programs Pages

Given I load the Golden Gate University website

Scenario: I visit GGU Programs Courses and Schedules page
  When I go to the GGU Programs Courses and Schedules page
  And The Programs Courses and Schedules page layout loads correctly
  Then I should see the GGU Programs Courses and Schedules page content

Scenario: I visit GGU Programs Course Catalog page
  When I go to the GGU Programs Course Catalog page
  And The GGU Programs Course Catalog page layout loads correctly
  Then I should see the GGU Programs Course Catalog page content
