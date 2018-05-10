Feature: User logs in to account
  As a user
  In order to see my dashboard
  I need to be able to login

Background:
  Given We have the following fields:
    | name    | email           | password    |
    | Maran   | maran@test.com  | 12345678    |

Scenario: User can log in with valid credentials
  Given I visit the site
  When I click "Login"
  And I fill in "Email" with "maran@test.com"
  And I fill in "Password" with "12345678"
  And I click "Log in"
  Then I should see "Signed in successfully."

Scenario: User provides invalid credentials
   Given I visit the site
   And I click "Login"
   And I fill in "Email" with "maran@test.com"
   And I fill in "Password" with "101dream"
   And I click "Log in"
   And I should see "Invalid Email or password."