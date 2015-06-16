##Scenario: Verify if I can click plus button and text level appear and after
def verify_buttons_programming_skills

$i = 0
$num = 5

 while $i < $num  do
  
    $i +=1
    if $i == 1 
      $xpath = "//*[@id='programming-front']//div[contains(text(),'HTML5')]"
    elsif $i == 2
      $xpath = "//*[@id='programming-front']//div[contains(text(),'CSS3')]"
    elsif $i == 3
      $xpath = "//*[@id='programming-front']//div[contains(text(),'JQuery')]"
    elsif $i == 4
      $xpath = "//*[@id='programming-front']//div[.='SQL']"
    elsif $i == 5
      $xpath = "//*[@id='programming-front']//div[contains(text(),'WordPress')]"
    end
    find(:xpath, $xpath).click
       
    if $i == 1 and find(:xpath, "//*[@id='programming-front']//div[contains(text(),'Medium Level')]").visible? 
      puts "HTML5 = true"
    elsif $i == 2 and find(:xpath, "//*[@id='programming-front']//div[contains(text(),'Medium Level')]").visible?
      puts "CSS3 = true"
    elsif $i == 3 and find(:xpath, "//*[@id='programming-front']//div[contains(text(),'Basic Level')]").visible?
      puts "JQuery = true"
    elsif $i == 4 and find(:xpath, "//*[@id='programming-front']//div[contains(text(),'Basic Level')]").visible?
      puts "SQL = true"
    elsif $i == 5 and find(:xpath, "//*[@id='programming-front']//div[contains(text(),'Medium Level')]").visible?
      puts "WordPress = true"
    else puts "false"
       end
    find(:xpath, $xpath).click

 end
 page.should have_no_content('Medium Level')
 page.should have_no_content('Basic Level')
end 


##Scenario: Verify if I can click plus button and text level appear and after second click disappear in the database and bugtracking tools section
def verify_buttons_data_bugtracking_skills

$i = 0
$num = 4
  bug_tracking_data = [nil,"JIRA", "BugZilla", "MySQL", "Oracle"]
  level_bug_data = [nil,"bug tracking system", "bug tracking system","database","database"]
 while $i < $num  do

    $i +=1
    if $i == 1 || 2 || 3 || 4
      $xpath = "//*[@id='programming-front']//div[contains(text(),'#{bug_tracking_data[$i]}')]"
    end
    find(:xpath, $xpath).click

    if $i == 1 || 2 || 3 || 4 and find(:xpath, "//*[@id='programming-front']//div[contains(text(),'#{level_bug_data[$i]}')]").visible? 
      puts "'#{bug_tracking_data[$i]}' = true"
    end
    find(:xpath, $xpath).click
  end
  page.should have_no_content('bug tracking system')
  page.should have_no_content('database')
end

##Scenario: Verify if I can click plus button and text level appear and after second click disappear in the platforms section
def verify_buttons_platforms_skills

$i = 0
$num = 3
data_ex = [nil, "Mobile iOS", "Mobile Android OS", "Windows 8/7/Vista/XP"]
data_zz = [nil, "apple operation system", "android operation system","microsoft windows"]
 while $i < $num  do

    $i +=1
    if $i == 1 || 2 || 3
      $xpath = "//*[@id='programming-front']//div[contains(text(),'#{data_ex[$i]}')]"
    end
    find(:xpath, $xpath).click

    if find(:xpath, "//*[@id='programming-front']//div[contains(text(),'#{data_zz[$i]}')]").visible? 
      puts "'#{data_ex[$i]}' = true"
    end
    find(:xpath, $xpath).click
  end
  page.should have_no_content('apple operation system')
  page.should have_no_content('android operation system')
  page.should have_no_content('microsoft windows')
end

## no other Page Objects beyound this point