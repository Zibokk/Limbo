## These are the commonly found objects between profile and cv
def verify_profile_present_for_nick_cornovan
  page.should have_content('Nick Cornovan')
end
def verify_programming_skills
  page.should have_content('HTML5')
  page.should have_content('CSS3')
  page.should have_content('JQuery')
  page.should have_content('SQL')
  page.should have_content('WordPress')
end

def verify_database_skills
  page.should have_content('MySQL')
  page.should have_content('Oracle')
end

def verify_bug_tracking
  page.should have_content('JIRA')
  page.should have_content('BugZilla')
end

def verify_platforms
  page.should have_content('Mobile iOS')
  page.should have_content('Mobile Android OS')
  page.should have_content('Windows 8/7/Vista/XP')
end

def verify_profile_section_information
  page.should have_content('Name: Nick')
  page.should have_content('Surname: Cornovan')
  page.should have_content('Lives In: South San Francisco, CA, USA')
  page.should have_content('Languages: English, Romanian, Russian')
end