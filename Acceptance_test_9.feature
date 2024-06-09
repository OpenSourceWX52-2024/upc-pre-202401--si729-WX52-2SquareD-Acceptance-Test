Feature: Update profile data
    Scenario 1: User updates profile data
        Given the user is logged in
        When the user updates their profile data
        Then the user's profile data is updated
        Example: 
            (User is logged in)
            (User clicks on the section sidebar hamburger button)
            (User clicks on the configuration button)
            | username | Email | password | new password |
            | user1    | user1@example.com  | 123456789|     |
            (User makes changes)
            | username | Email | password | new password |
            | user1    | user11234@example.com  | 123456789   | bangbangcon |
            (User clicks on the save button)
            => User changes are saved

    Scenario 2: User updates profile data with invalid data
        Given the user is logged in
        When the user updates their profile data with invalid data
        Then the user's profile data is not updated
        Example: 
            (User is logged in)
            (User clicks on the section sidebar hamburger button)
            (User clicks on the configuration button)
            | username | Email | password | new password |
            | user1    | user1@example.com  | 123456789|     |
            (User makes changes)
            | username | Email | password | new password |
            | user1    | user1.com | 123456789   | bangbangcon |
            (User clicks on the save button)
            (System detects invalid data on the input field)
            (System shows error message)=> Email input file is invalid: miss @
            (System does not save the changes) => User changes are not saved

    Scenario 3: User updates profile data with empty fields
        Given the user is logged in
        When the user updates their profile data with empty fields
        Then the user's profile data is not updated
        Example: 
            (User is logged in)
            (User clicks on the section sidebar hamburger button)
            (User clicks on the configuration button)
            | username | Email | password | new password |
            | user1    | user1@example.com  | 123456789|     |
            (User makes changes)
            | username | Email | password | new password |
            | user1    | <null> | 123456789   | bangbangcon |
            (User clicks on the save button)
            (System detects empty data on the input field)
            (System shows error message)=> Email input file is obligatory.
            (System does not save the changes) => User changes are not saved.