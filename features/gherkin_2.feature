Feature: Wikipedia Reading Lists

  Scenario: Add articles to reading lists
    Given I am on home page
    And I search for the article "Football"
    And I wait
    Then I press the enter button
    Then I tap on bookmark icon 
    And I create a new reading list named "My Reading List"
    Then I wait
    And I verify the confirmation message
