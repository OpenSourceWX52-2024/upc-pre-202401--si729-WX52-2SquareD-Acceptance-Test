Feature: Sign In 
    Scenario 01: Sign In with valid credentials
        Given I am on the login page
        When I enter valid credentials
        And I click on the sign in button
        Then I should be signed in successfully
        Examples:
            | username | password |
            | user1    | pass1    |
            | user2    | pass2    |
            | user3    | pass3    |

    Scenario 02: Sign In with invalid credentials
        Given I am on the login page
        When I enter invalid credentials
        And I click on the sign in button
        Then I should see an error message
        Examples:
            |username | password |
            | user1   |   p*ss*  |
            | user@   |   pass2 |
