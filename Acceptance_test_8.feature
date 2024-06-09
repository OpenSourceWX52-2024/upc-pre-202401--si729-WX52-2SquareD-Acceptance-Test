Feature: Visualitation of the user profile
    Scenario 1: User profile is displayed
        Given the user is logged in
        When the user clicks on the profile button
        Then the user profile is displayed
        Example: 
            (User is logged in)
            (User clicks on the section sidebar hamburger button)
            (User clicks on the configuration button)
            | username | Email | password | new password |
            | user1    | user1@example.com  | 123456789|     |
            (Data appears)
            => User profile is displayed

    Scenario 2: User profile is not displayed
        Given the user is not logged in
        When the user clicks on the profile button
        Then the user profile is not displayed
        Example: 
            (User is not logged in)
            (User clicks on the section sidebar hamburger button)
            (User clicks on the configuration button)
            | username | Email | password | new password |
            | user1    | | |  |
            (Data does not appear)
            => User profile is not displayed

    Scenario 3: User profile view does not load
        Given the user is logged in
        When the user clicks on the profile button
        Then the user profile view does not load
        Example: 
            (User is logged in)
            (User clicks on the section sidebar hamburger button)
            (User clicks on the configuration button)
            => User profile view does not load
            => Spinner is displayed
            => Error message is displayed
            