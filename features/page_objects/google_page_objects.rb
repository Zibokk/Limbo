def search_word_accenture
	fill_in("lst-ib", :with => 'Accenture')
end

def click_button_search
	find(:xpath, "//button[@name='btnG']").click
end

def verify_search_result
	page.has_content?('arg1')
    ##find(:xpath, "//*[@id='vs0p1']").visible?
    ##find(:xpath, "//*img/[@id='lu_map']").visible?
end