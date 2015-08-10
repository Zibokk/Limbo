## Navigation
def go_to_ggu_graduatepage
  reload_page
  visit('/graduate')
end

def go_to_ggu_graduateoverview
  reload_page
  visit('/graduate/overview')
end

def go_to_ggu_graduate_enrollment
  reload_page
  visit('/graduate/enrollment')
end

def go_to_ggu_graduate_academic_program
  reload_page
  visit('/graduate/academic-programs')
end

def go_to_ggu_graduate_faculty
  reload_page
  visit('/graduate/faculty')
end

def go_to_ggu_graduate_international
  reload_page
  visit('/graduate/international')
end

def go_to_ggu_graduate_alumni
  reload_page
  visit('/graduate/alumni')
end

def go_to_ggu_graduate_student_services
  reload_page
  visit('/graduate/student-services')
end

def go_to_ggu_graduate_career_services
  reload_page
  visit('/graduate/career-services')
end

def go_to_ggu_graduate_news_and_events
  reload_page
  visit('/graduate/news-and-calendar')
end

def go_to_ggu_graduate_contact
  reload_page
  visit('/graduate/contact')
end

## page layout
def verify_ggu_graduate_breadcrumb
  page.should have_content('Graduate')
end

def verify_ggu_graduate_enrollment_breadcrumb
  page.should have_content('Enrollment')
end

def verify_ggu_graduate_academic_programs_breadcrumb
  page.should have_content('Academic Programs')
end

def verify_ggu_graduate_faculty_breadcrumb
  page.should have_content('Faculty')
end

def verify_ggu_graduate_international_breadcrumb
  page.should have_content('International')
end

def verify_ggu_graduate_alumni_breadcrumb
  page.should have_content('Alumni')
end

def verify_ggu_graduate_student_services_breadcrumb
  page.should have_content('Student Services')
end

def verify_ggu_graduate_career_services_breadcrumb
  page.should have_content('Career Services')
end

def verify_ggu_graduate_news_events_breadcrumb
  page.should have_content('News & Events')
end

def verify_ggu_graduate_contact_breadcrumb
  page.should have_content('Contact')
end
## Assertions

def verify_ggu_graduatepage
  reload_page
  page.should have_content('Golden Gate University is deeply committed to supporting our students as they work toward their goals.')
end

def verify_ggu_graduateoverview
  reload_page
  page.should have_content('Golden Gate University offers a unique experience for graduate students across the country. We offer a variety of options for instruction to best suit all of our candidates')
end

def verify_ggu_graduate_enrollment
  reload_page
  page.should have_content('Golden Gate University provides a network of services to make the enrollment process as easy and convenient as possible')
end

def verify_ggu_graduate_academic_program
  reload_page
  page.should have_content('Golden Gate University offers 15 graduate degrees with 24 concentrations, as well as 21 certificate options. Most courses are offered during the evening, on weekends and online.')
end

def verify_ggu_graduate_faculty
  reload_page
  page.should have_content('Golden Gate University instructors bring real-world expertise from the field to the classroom. They engage adults -- like you -- who are striving to complete a degree program in a practical and immersive learning environment')
end

def verify_ggu_graduate_international
  reload_page
  page.should have_content('Golden Gate University is dedicated to helping our international students from start to finish')
end

def verify_ggu_graduate_alumni
  reload_page
  page.should have_content('Become part of the next chapter in GGU')
end

def verify_ggu_graduate_student_services
  reload_page
  page.should have_content('From the time you inquire to the time you graduate, Golden Gate University strives to satisfy your needs as a student -- to ensure your success -- and to do so in a convenient, personalized and pleasing way.')
end

def verify_ggu_graduate_career_services
  reload_page
  page.should have_content('GGU offers a wide range of free career services to students, alumni, faculty, staff and employers.')
end

def verify_ggu_graduate_news_and_events
  reload_page
  page.should have_content('NEWS')
end

def verify_ggu_graduate_contact
  reload_page
  page.should have_content('415-442-6559')
end
