AfterStep('@pause') do
 print "Press Return to continue"
 STDIN.getc
end

After do
  # TODO: Make this less terrible. All teardown logic should be in Blackbox.teardown.
  if Blackbox.environment == :production
    # Cancel a petition created during the scenario
    if ( !(Blackbox.test_variables.petition.unsafe_check(:url).nil?) )
      petition_url = Blackbox.test_variables.petition.url
      visit petition_url
      page.execute_script(%| window.confirm = function () { return true; }; |) # stub confirm dialog
      find(".menu-link").click
      if page.evaluate_script('$(":animated").length') > 0
        wait_until do
          page.evaluate_script('$(":animated").length') == 0
        end
      end
      find("form[action$='/cancel'] a").click
      Blackbox.production_warning "Cancelled petition at #{petition_url}."
    end

    # Close a user account created during the scenario
    if ( !(Blackbox.test_variables.petition_creator.unsafe_check(:email).nil?) )
      email = Blackbox.test_variables.petition_creator.email
      visit "/account_settings/confirm_account_closure"
      Blackbox.production_warning "Closed user with email address #{email}."
    end
    if ( !(Blackbox.test_variables.user.unsafe_check(:email).nil?) )
      email = Blackbox.test_variables.user.email
      visit "/account_settings/confirm_account_closure"
      Blackbox.production_warning "Closed user with email address #{email}."
    end
  end

  # IE doesn't clear cookies properly, so manually log out.
  logout if Blackbox.browser.to_s =~ %r{ie\d?$}

  Blackbox.teardown
end
