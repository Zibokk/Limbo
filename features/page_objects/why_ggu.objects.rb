## menu navigation
def go_to_ggu_whyggu
  reload_page
  visit('/why-ggu')
end

def go_to_ggu_whyggu_overview
  reload_page
  visit('/why-ggu/overview')
end

def go_to_ggu_whyggu_academics
  reload_page
  visit('/why-ggu/our-academics')
end

def go_to_ggu_whyggu_services
  reload_page
  visit('/why-ggu/services')
end

def go_to_ggu_whyggu_onlinelearning
  reload_page
  visit('/why-ggu/online-learning')
end

def go_to_ggu_whyggu_international
  reload_page
  visit('/why-ggu/international')
end

def go_to_ggu_whyggu_information_request_form
  reload_page
  visit('/information-request-form')
end

def go_to_ggu_whyggu_apply
   reload_page
   visit('/apply')
end

def go_to_ggu_whyggu_news_and_events
    reload_page
    visit('/why-ggu/news-and-calendar')
end

## tab navigation
def click_overview_tab
  reload_page
  find_link('Overview').click
end

def click_our_academics_tab
  reload_page
  find_link('Academics').click
end

def click_services_tab
  find_link('Services').click
end
def click_online_learning_tab 
  find_link('Learning').click
end

def click_international_tab
  find_link('International').click
end

def click_request_info_tab
  find_link('Request Info').click
end

def click_apply_now_tab
  find_link('Apply').click
end

def click_facts_stats_tab
  find_link('Facts & Stats').click
end

def click_news_events_tab
  find_link('News & Events').click
end

## Page layout

def verify_ggu_whyggu_page
  page.should have_content('Why Golden Gate University?')
end

def verify_ggu_whyggu_overview_breadcrumb
  page.should have_content('why ggu:')
  page.should have_content('Overview')
end

def verify_ggu_whyggu_our_academics_breadcrumb
  page.should have_content('why ggu:')
  page.should have_content('Our Academics')
end

def verify_ggu_whyggu_services_breadcrumb
  page.should have_content('why ggu:')
  page.should have_content('Services')
end

def verify_ggu_whyggu_online_learning_breadcrumb
  page.should have_content('why ggu:')
  page.should have_content('Online Learning | About CyberCampus')
end

def verify_ggu_whyggu_international_breadcrumb
  page.should have_content('why ggu:')
  page.should have_content('International')
end

def verify_ggu_whyggu_facts_stats_breadcrumb
  page.should have_content('WHY GGU:')
  page.should have_content('Facts & Stats')
end

def verify_ggu_whyggu_news_events_breadcrumb
  page.should have_content('why ggu:')
  page.should have_content('News & Events')
end

def verify_ggu_graduate_overview_breadcrumb
 reload_page
 page.should have_content('Golden Gate University offers a unique experience for graduate students across the country')
end




## assertions

 #page.should have_css('ul[class="breadcrumbs"]')
  

def verify_ggu_whyggupage
  reload_page
  page.should have_content('Why Golden Gate University?')
end

def verify_ggu_whyggu_overview_page
  reload_page
  page.should have_content('The choice you make about your education')
end

def verify_ggu_whyggu_academics_page
  reload_page
  page.should have_content('Golden Gate University offers a wide range of courses, both on campus and online, for students at all levels of higher education.')
end

def verify_ggu_whyggu_services_page
  reload_page
  page.should have_content('Our graduates frequently tell us that our individual attention is what sets us apart from other universities. Discover for yourself the many services we offer students; from the time students apply to the time they graduate, we have members of the faculty and staff to help them along the way')
end

def verify_ggu_whyggu_onlinelearning_page
  reload_page
  page.should have_content('CyberCampus offers a virtual classroom experience providing cutting-edge course content taught by professionals working in their fields. All courses are accessible from the web, allowing you to complete coursework wherever and whenever is convenient for you.')
end

def verify_ggu_whyggu_international_page
reload_page
 page.should have_content('Golden Gate University is dedicated to helping our international students from start to finish -- from application to graduation. About 10% of those enrolled at GGU are international students, hailing from approximately 80 countries.')
end

def verify_ggu_whyggu_information_request_form_page
  reload_page
  page.should have_content('Congratulations on deciding to continue your education!')
end

def verify_ggu_wwhyggu_apply
  reload_page
  page.should have_content('one step closer to reaching your academic goals!')
end

def verify_ggu_whyggu_news_and_events
 reload_page
 page.should have_css('div[id="header"]')
end




