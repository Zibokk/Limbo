@javascript @i18n @misc
Feature: i18n Localization

Background:
  Given I have loaded the home page

Scenario: As an French speaker when I start a petition I should see a confirmation in my native language
  When I start a petition as a registered French speaker
  Then I should be notified in French that my petition has started
