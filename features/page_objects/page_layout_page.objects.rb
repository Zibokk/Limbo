def verify_ggu_pageload
   page.should have_css('div[id="header"]')
   page.should have_css('ul[class="sub-menu "]')
   page.should have_css('ul[class="breadcrumbs breadcrumbs-add-title"]')
   page.should have_css('div[id="footer"]')
end

def verify_sub_menu_indent_ggu_pageload
   page.should have_css('div[id="header"]')
   page.should have_css('ul[class="sub-menu sub-menu-indent"]')
   page.should have_css('ul[class="breadcrumbs breadcrumbs-add-title"]')
   page.should have_css('div[id="footer"]')
end