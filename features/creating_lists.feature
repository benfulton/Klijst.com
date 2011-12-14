Feature: Creating lijsts
  In order to keep track of things
  As a user
  I want to create a lijst

  Scenario: Creating a lijst
    Given I am on the homepage
    When I follow "New Lijst"
    And I fill in "Name" with "Indiana Birds"
    And I press "Create Lijst"
    Then I should see "Lijst has been created."
