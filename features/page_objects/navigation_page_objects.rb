
def reload_page
  using_wait_time 120 do
  visit(current_path)
 end
end
#### Scrap

def assert_home_page_assets
  #page.should have_css('.signup_page_item')
  ## page.should have_selector('.big.full.action.button') #Start a petition
  ## page.should have_css('div#petitions')
  ## page.should have_css('.overlay')
end

# will have to be refactored when Admin Dashboard is localized
def admin_dashboard
  visit('/admin')
  # home_page
  # within('.nav-actions.toggleable>ul>li') do
  #   find("a", :href => /admin/i).click
  # end
end

#def expand_login_modal
#  home_page
#  find('.login-or-join-link').click
#end

def go_to_organization_signup_page
  visit('/organization_signup')
end

def add_an_organization_from_admin_dashboard
  admin_dashboard
  find_link('/admin/organizations/add_organization').click
  page_should have_locator('a', :href => '/partners')
end

def petitions_browse_by_cause(cause)
  home_page
  find(cause).click
end

def click_petition_from_home_page
  home_page
  find('.header>a').click
  page.should have_css('.petition-action-box')
end

# refactor everything below this line
def load_petition_recent
  home_page
  find('more-link').click
  # click more recent
  # visit('/#most-recent')
  within('.petition-panels') do
    find('.media-box').click
  end
  page.should have_css('.tab.about-this-petition')
end

def reload_page
  using_wait_time 120 do
  visit(current_path)
 end
end

def language_select(language)
  language_css = "select[name=locale] option[value=#{language}]"
  language_local = find(language_css).text
  select(language_local, :from => 'locale')
end

def goto_the_staff_member_page
  home_page
  find_link('Staff').click
end

def verify_staff_members
  find_link('Ben Rattray').click
  page.should have_css('.user-content')
end

def verify_client_services_admin_links
  using_wait_time 120 do
   find_link('Mission Control').click
   wait_until { find('.full-width.dataTable').visible? }
   admin_dashboard
   find_link('Updated Campaign Dashboard').click
   wait_until { find_link('Past Commitments').visible? }
   admin_dashboard
   find_link('Petition Upsell Priorities').click
   wait_until { find_link('Back to Admin Home').visible? }
   admin_dashboard
   find_link('Petition Upsell Predictor').click
   wait_until { find_link('Back to Admin Home').visible? }
   admin_dashboard
   find_link('Petition Upsell Performance').click
   wait_until { find_link('Back to Admin Home').visible? }
   admin_dashboard
   find_link('Upload Suppression List').click
   wait_until { find_link('Back to Admin Home').visible? }
   admin_dashboard
   find_link('Relay Connections').click
   wait_until { find_link('Back to Admin Home').visible? }
   admin_dashboard
   find_link('Projected Opt-in Counts').click
   wait_until { find_link('Back to Admin Home').visible? }
   admin_dashboard
   find_link('Partner Reports Dashboard').click
   wait_until { find_link('Back to Admin Home').visible? }
   admin_dashboard
   find_link('Old Multivariate Tests').click
   wait_until { find_link('Back to Admin Home').visible? }
   admin_dashboard
  end
end

def go_to_petition_show_view_page
  using_wait_time 200 do
   wait_until {find_link('View').visible?}
   find_link('View').click
  end
end

def go_to_petition_edit_page
  using_wait_time 200 do
   wait_until {find_link('Edit').visible?}
   find_link('Edit').click
  end
end

def go_to_petition_message_page
  using_wait_time 200 do
   wait_until {find_link('Message').visible?}
   find_link('Message').click
  end
end

def go_to_petition_victory_page
  using_wait_time 200 do
   wait_until {find_link('Victory').visible?}
   find_link('Victory').click
  end
end
