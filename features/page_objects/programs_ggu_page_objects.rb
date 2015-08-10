## navigation
def go_to_ggu_programs
  reload_page
  visit('/programs')
end

def go_to_ggu_programs_course_schedule
  reload_page
  visit('/programs/course-schedule')
end

def go_to_ggu_programs_catalog_schedule
  reload_page
  visit('/programs/course-catalog')
end

## page layout

def verify_ggu_degrees_certificates_breadcrumb
  page.should have_content('Degrees & Certificates')
end

def verify_ggu_course_schedule_breadcrumb
  page.should have_content('Course Schedule')
end

def verify_ggu_course_catalog_breadcrumb
  page.should have_content('Course Catalog')
end

## assertions

def verify_ggu_programspage
  reload_page
  page.should have_content('Get the skills needed to enter or advance in the in-demand accounting profession')
end

def verify_ggu_programs_catalog_schedule
  reload_page
  page.should have_content('To enroll in courses, YOU must either:')
end

def verify_ggu_programs_course_schedule
  reload_page
  page.should have_content('be admitted to a degree or certificate program, or')
end
