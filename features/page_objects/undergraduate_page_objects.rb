## Navigation
def go_to_ggu_undergraduatepage
  reload_page
  visit('/undergraduate')
end

def go_to_ggu_undergraduateoverview
  reload_page
  visit('/undergraduate/overview')
end

def go_to_ggu_undergraduate_enrollment
  reload_page
  visit('/undergraduate/enrollment')
end

def go_to_ggu_undergraduate_academic_program
  reload_page
  visit('/undergraduate/academic-programs')
end

def go_to_ggu_undergraduate_faculty
  reload_page
  visit('/undergraduate/faculty')
end

def go_to_ggu_undergraduate_alumni
  reload_page
  visit('/undergraduate/alumni')
end

def go_to_ggu_undergraduate_student_services
  reload_page
  visit('/undergraduate/student-services')
end

def go_to_ggu_undergraduate_career_services
  reload_page
  visit('/undergraduate/career-services')
end

def go_to_ggu_undergraduate_news_and_events
  reload_page
  visit('/undergraduate/news-and-calendar')
end

def go_to_ggu_undergraduate_contact
  reload_page
  visit('/undergraduate/contact')
end

## page layout
def verify_ggu_undergraduate_breadcrumb
  page.should have_content('Undergraduate')
end

def verify_ggu_undergraduate_overview_breadcrumb
  page.should have_content('Undergraduate at GGU')
end

def verify_ggu_undergraduate_enrollment_breadcrumb
  page.should have_content('Enrollment')
end

def verify_ggu_undergraduate_academic_programs_breadcrumb
  page.should have_content('Academic Programs')
end

def verify_ggu_undergraduate_faculty_breadcrumb
  page.should have_content('Faculty')
end

def verify_ggu_undergraduate_alumni_breadcrumb
  page.should have_content('Alumni')
end

def verify_ggu_undergraduate_student_services_breadcrumb
  page.should have_content('Student Services')
end

def verify_ggu_undergraduate_career_services_breadcrumb
  page.should have_content('Career Services')
end

def verify_ggu_undergraduate_news_events_breadcrumb
  page.should have_content('News & Events')
end

def verify_ggu_undergraduate_contact_breadcrumb
  page.should have_content('Contact')
end
## Assertions

def verify_ggu_undergraduatepage
  reload_page
  page.should have_content('Golden Gate University is deeply committed to supporting our students as they work toward their goals.')
end

def verify_ggu_undergraduateoverview
  reload_page
  page.should have_content('The road to completing a bachelor')
end

def verify_ggu_undergraduate_enrollment
  reload_page
  page.should have_content('Golden Gate University provides a network of services to make the enrollment process as easy and convenient as possible')
end

def verify_ggu_undergraduate_academic_program
  reload_page
  page.should have_content('GGU offers undergraduate degrees in business and management with a choice of eight different concentrations, as well as nine undergraduate certificates')
end

def verify_ggu_undergraduate_faculty
  reload_page
  page.should have_content('Golden Gate University instructors bring real-world expertise from the field to the classroom. They engage adults -- like you -- who are striving to complete an undergraduate program in a practical and insightful learning environment')
end

def verify_ggu_undergraduate_alumni
  reload_page
  page.should have_content('Inspiration, connection and validation: as an undergraduate student at Golden Gate University you are part of a community which includes a large number of successful alumni.')
end

def verify_ggu_undergraduate_student_services
  reload_page
  page.should have_content('From the time you inquire to the time you graduate, Golden Gate University strives to satisfy your needs as a student -- to ensure your success -- and to do so in a convenient, personalized and pleasing way.')
end

def verify_ggu_undergraduate_career_services
  reload_page
  page.should have_content('GGU offers a wide range of free career services to students, alumni, faculty, staff and employers.')
end

def verify_ggu_undergraduate_news_and_events
  reload_page
  page.should have_content('NEWS')
end

def verify_ggu_undergraduate_contact
  reload_page
  page.should have_content('415-442-6565')
end