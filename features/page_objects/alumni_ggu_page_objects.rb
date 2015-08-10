## Navigation

def go_to_ggu_alumnipage
  reload_page
  visit('/alumni')
end

def go_to_ggu_alumni_giving
  reload_page
  visit('/alumni/giving')
end

def go_to_ggu_alumni_services_and_benefits
  reload_page
  visit('/alumni/services-and-benefits')
end

def go_to_ggu_alumni_news_and_calendar
  reload_page
  visit('/alumni/news-and-calendar')
end

def go_to_ggu_alumni_contact
  reload_page
  visit('/alumni/contact')
end

## page layout

def verify_ggu_alumni_breadcrumb
  page.should have_content('Alumni')
end

def verify_ggu_alumni_giving_breadcrumb
  page.should have_content('Giving')
end

def verify_ggu_alumni_services_benefits_breadcrumb
  page.should have_content('Services & Benefits')
end

def verify_ggu_alumni_news_events_breadcrumb
  page.should have_content('News & Events')
end

def verify_ggu_alumni_contact_breadcrumb
  page.should have_content('Contact')
end

## Assertions
def verify_ggu_alumni
 reload_page
 page.should have_content('ALUMNI')
end

def verify_ggu_alumni_giving
  reload_page
  page.should have_content('Your gifts enable GGU to help students become successful professionals by:')
end

def verify_ggu_alumni_services_and_benefits
  reload_page
  page.should have_content('Services')
end

def verify_ggu_alumni_news_and_calendar
  reload_page
  page.should have_content('NEWS & EVENTS')
end

def verify_ggu_alumni_contact
  reload_page
  page.should have_content('415-442-7820')
end