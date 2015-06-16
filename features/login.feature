# author Nick & Dya
Feature: Log In and Log Out

Given: I want to Log In as a administrator in website nickcornovan.com and select field Appearance

Scenario: Verify that administrator can Log In 
  When I go to LogIn page
  And  I enter valid username and password and submit:
  |username|
  |password|
  Then I should see admin panel with text Welcome to WordPress

  When  I click button log out
  Then  I shoud exit from the admin panel and I should see "You are now logged out"

## no other Scenario beyond this point