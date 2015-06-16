# author Nick & Dya
Feature:CV

Background: As a user i want to view cv page

Scenario: Verify that the cv page has the correct content
     When I go to cv page
     And  do nothing
     Then I should see on the cv page section:
     |TECHNICAL SKILL|
     |Programming|
     |Database & Bug Tracking Tools|
     |Platforms|
     |Employment|
     |HTML5|
     |CSS3|
     |JQuery|
     |SQL|
     |WordPress|
     |JIRA|
     |BugZilla|
     |MySQL|
     |Oracle| 
     |Mobile iOS|
     |Mobile Android OS|
     |Windows 8/7/Vista/XP|
     |07/2014 - 01/2015|
     |Software QA Engineer eTherapi Inc.|
     |Analyze and determine test strategy for eTherapi online service Web application| 
     |09/2012 - 03/2014|
     |Software QA Engineer Creatego Inc.| 
     |Performed ad-hoc, usability, localization and regression testing in QA and production environments on Android and iOS platforms| 
     |2013 Nick Cornovan. All Rights Reserved.|
     
## no other Scenario beyond this point