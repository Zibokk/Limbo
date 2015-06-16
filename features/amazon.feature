# author Nicusor Cornovan
Feature: Buy Item from Amazon

Given: I want to Log In in Amazon and buy items when it is expected price and text

Scenario: Verify that I can buy automaticaly items from amazon 
  When I go to amazon website
  And  I click button sign in
  And  I enter valid username and password for amazon account
  Then I should see admin panel with text "Hello, NIck"
  Then I search item "LEGO 21110"
  And  Verify Item text "Available from"
  ##And  Verify Item text "Ships from and sold by Amazon.com. Gift-wrap available."
  ##And  Send screenshot and email confirmation with result

## no other Scenario beyond this point