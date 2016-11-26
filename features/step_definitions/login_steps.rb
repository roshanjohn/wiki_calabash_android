Then /^I enter the username$/ do
	enter_text("* marked:'login_username_text'",$username)
end


 Then /^I enter the password$/ do
 	enter_text("* marked:'password_edit_text_input'",$password)
 end


 And /^I tap the Login button$/ do
 	tap_when_element_exists("* marked:'login_button'")
 end