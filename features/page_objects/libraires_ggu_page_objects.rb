
## Navigation

def go_to_ggu_libraries
  reload_page
  visit('/libraries')
end

## page layout

def verify_ggu_libraries_breadcrumb
  page.should have_content('Libraries')
end

def verify_ggu_libraries_university_library_breadcrumb
  page.should have_content('University Library')
end

## Assertions
def verify_ggu_libraries
  page.should have_content('GGU has two libraries. The University Library serves the entire GGU community, and the Law Library serves the students, staff and faculty at the School of Law. ')
end