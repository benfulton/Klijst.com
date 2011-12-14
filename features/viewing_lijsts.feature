Feature: Viewing lijsts
  In order to add dingen to a lijst
  As a user
  I want to be able to see a list of available lijsts

Scenario: Listing all lijsts
  Given there is a lijst called "Indiana Birds"
  And I am on the homepage
  When I follow "Indiana Birds"
  Then I should be on the lijst page for "Indiana Birds"
