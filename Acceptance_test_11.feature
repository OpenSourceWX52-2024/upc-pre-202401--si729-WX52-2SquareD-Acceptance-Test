Feature: Log Out of All Sessions
    Scenario 1: User log out of his device
        Given the user is logged in
        When the user logs out of all sessions
        Then the user should be logged out of all sessions
        Examples:
            (User clicks on the "Log Out" button on one device)
            => System logs the user out of the device

    Scenario 2: User can't log out of his device
        Given the user is logged in
        When the user tries to log out of all sessions
        Then the user should not be logged out of all sessions
        Examples:
            (User clicks on the "Log Out" button on one device)
            => System does not log the user out of the device
            => System shows spins the loading icon
            => System displays an error message
            