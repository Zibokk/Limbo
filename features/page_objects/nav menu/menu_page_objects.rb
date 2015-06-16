def click_cv_page
  find('.cv', :text=>"CV").click
end

def verify_cv_employment_content
  page.should have_content('Employment')
end