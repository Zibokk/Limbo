def verify_ggu_lawpage
  reload_page
  page.should have_content('LAW')
end