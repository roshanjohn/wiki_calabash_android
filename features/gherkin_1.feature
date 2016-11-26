Feature: Login to Wikipedia

  Scenario: Login to Wikipedia app as a valid user
    Given I am on home page
    Then I tap on menu
    And I touch the login button
    Then I wait
    And I enter the username
    Then I enter the password 
    And I tap the Login button
    Then I wait
    Then I tap on menu
    And I should not see the "Login" text
