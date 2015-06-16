def verify_cv_present_for_technical_skills
  page.should have_content('TECHNICAL SKILLS')
end

def verify_cv_employment_skills
  page.should have_content('07/2014 - 01/2015')
  page.should have_content('Software QA Engineer eTherapi Inc.')
  page.should have_content('Analyze and determine test strategy for eTherapi online service Web application')
  page.should have_content('09/2012 - 03/2014')
  page.should have_content('Software QA Engineer Creatego Inc.')
  page.should have_content('Performed ad-hoc, usability, localization and regression testing in QA and production environments on Android and iOS platforms')
  page.should have_content('2013 Nick Cornovan. All Rights Reserved.')
end