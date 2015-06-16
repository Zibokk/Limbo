# author Nick & Dya
Feature: Profile

I want to view Nick Cornovan's Profile web page

Scenario: Verify that the profile page has the correct content 
  When I go to the profile page
  And do nothing
  Then should see the following content in each sections:
  |Nick Cornovan|
  |Profile Description|
  |Information|
  |Skills|
  |TECHNICAL SKILLS|
  |Programming|
  |Database & Bug Tracking Tools|
  |HTML5|
  |CSS3|
  |JQuery|
  |SQL|
  |WordPress| 
  |MySQL|
  |Oracle|
  |JIRA|
  |BugZilla|
  |Mobile iOS|
  |Mobile Android OS|
  |Windows 8/7/Vista/XP|
  |Name: Nick|
  |Surname: Cornovan|
  |Lives In: South San Francisco, CA, USA|
  |Languages: English, Romanian, Russian|

Scenario: Verify if I can click plus button and text level appear and after second click disappear in the programming section
  When I click plus button level text should appear and after second click disappear in the section programming

Scenario: Verify if I can click plus button and text level appear and after second click disappear in the database and bugtracking tools section
  When I click plus button level text should appear and after second click disappear in the section database and bugtracking tools

Scenario: Verify if I can click plus button and text level appear and after second click disappear in the platforms section
  When I click plus button level text should appear and after second click disappear in the section platforms

## no other Scenario beyond this point