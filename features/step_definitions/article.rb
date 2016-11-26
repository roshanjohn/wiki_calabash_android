# tap the bookmark icon
Then /^I tap on bookmark icon$/ do
	tap_when_element_exists("* marked:'view_article_menu_bar_bookmark'")
	tap_when_element_exists("* marked:'onboarding_button'")
end

# Create a new reading list
And /^I create a new reading list named "([^\"]*)"$/ do |text|
	tap_when_element_exists("* {text CONTAINS[c] 'Cancel'}'")
	tap_when_element_exists("* marked:'create_button'")
	tap_when_element_exists("* marked:'reading_list_title'")
	clear_text("textField marked:'reading_list_title'")
	enter_text("* marked:'reading_list_title'","#{text}")
	tap_when_element_exists("* marked:'button1'")
end

# Check whether the confirmation message is shown after reading list creation
Then /^I verify the confirmation message$/ do
	check_element_exists("* {text CONTAINS[c] 'VIEW LIST'}")
end