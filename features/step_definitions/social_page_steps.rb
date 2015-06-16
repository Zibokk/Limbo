##Scenario: Verify social media buttons
When(/^I click each social button I should navigate to social pages$/) do
   goto_profile_page
   resize_window_default
   ##click_social_button
   click_button_fb_icon
   verify_nick_fb_page
end

## no other Step Definition beyound this point