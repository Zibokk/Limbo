
def go_to_ggu_homepage
  visit('/')
  reload_page
end

def verify_top_navigation_not_logged_in
  reload_page
  page.should have_link('WHY GGU?')
  page.should have_link('PROGRAMS')
  page.should have_link('UNDERGRADUATE')
  page.should have_link('GRADUATE')
end

def verify_ggu_homepage
  page.should have_link('open-tab')
end



