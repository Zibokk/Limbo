
def enter_student_name(name)
  fill_in('main-loginform-username', :with => name)
end

def enter_student_password(password )
  click('main-loginform-password')
  fill_in('main-loginform-password', :with => password)
end

def login_to_ggu_as_student
  login_to_ggu
  enter_student_name('TestStudent')
  enter_student_password('1234')
  verify_login_as_student
end

def login_to_ggu
  #expand_login_modal
  click_link('open-tab')
end

def verify_top_navigation_not_logged_in
  reload_page
  page.should have_link('WHY GGU?')
  page.should have_link('PROGRAMS')
  page.should have_link('UNDERGRADUATE')
  page.should have_link('GRADUATE')
end

## scrap

def login_submit
  wait_until{ find('.button.action').visible? }
  find('.button.action').click
  wait_until{ find('.user-name.small').visible? }
end

def verify_login_as_site_admin
  page.should have_css('span.symbol.symbol-triangle-down') #symbol font down arrow
  page.should have_link('Admin')
end

def expand_login_modal
  find('button[data-show_modal=login_or_join]').click
  wait_until { find(".close-modal").visible? }
end

def logout
  using_wait_time 60 do
    if !(within('.column-5.last-column'){find('.small')['href'].nil?})
      find('.symbol-triangle-down').click
      actions = find('.user-actions')
      actions.all('li')[actions.all('li').size - 1].find('a').click
    end
  end
end

def verify_not_logged_in
  page.should_not have_css('.profile-block')
end


