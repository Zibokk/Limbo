@wip
Feature: Login 

Background:
  Given I load the Golden Gate University homepage	

Scenario: I vist the GGU homepage as a student
  When I log into Golden Gate University as a student
  Then I should be logged into Golden Gate University for you as a student