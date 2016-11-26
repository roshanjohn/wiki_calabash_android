Given /^I am on home page$/  do
	wait_for_elements_exist("*")
end

# Tap  on the hamburger menu icon
Then /^I tap on menu$/ do
	perform_action('click_on_screen',10,10)
end

# Tap the Login button
And /^I touch the login button$/ do 
	tap_when_element_exists("* marked:'nav_account_text'")
end

# Check whether a particular text is shown in view or not
Then /^I should not see the "([^\"]*)" text$/ do |text|
	check_element_does_not_exist("* {text CONTAINS[c] '#{text}'}")
end


Then /^I search for the article "([^\"]*)"$/ do |text|
	enter_text("* marked:'main_search_bar_text'","#{text}")
end