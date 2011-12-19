Feature: Signing up
In order to track my own lijsts
As a user
I want to be able to sign up

Scenario: Signing up
  Given I am on the homepage
  When I follow "Sign up"
  And I fill in "Email" with "user@klijst.com"
  And I fill in "Password" with "password"
  And I fill in "Password confirmation" with "password"
  And I press "Sign up"
  Then I should see "You have signed up successfully."
