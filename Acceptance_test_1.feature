Feature: Sing up 
    Scenario 01: Usser sing up successfully
        Case 01: Sing up with valid email
            Given I am on the Sing up page
            When I fill in the form with valid email
            And I press "Sing up"
            Then I should see "Welcome! You have signed up successfully."
            Examples:
                | name | email | password | password_confirmation |
                | John | john@example.com  | 1234 | 1234 |

    Scenario 02: Usser sing up unsuccessfully
        Case 01: Sing up with invalid email
            Given I am on the Sing up page
            When I fill in the form with invalid email
            And I press "Sing up"
            Then I should see "Email is invalid"
            Examples:
                | name | email | password | password_confirmation |
                | John | johnghmai.com  | 1234 | 1234 |
