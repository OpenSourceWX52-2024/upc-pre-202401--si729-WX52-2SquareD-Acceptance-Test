Feature: Visualization of the available games in MathPlayOpen
    Scenario 1: User is able to see the list of available games
        Given the user logs into MathPlayOpen
        When the user clicks on the "Home" button page
        Then the user should see a list of available games
        Example:
            (User logs into MathPlayOpen)
            => (User clicks on the "Home" button page)
            (User see the "Home" page)
            => (User sees a list of available games)
            | Game Image | Game Name | Button Play | Button View Details |
            | Image 1    | Game 1    | Play        | View Details         |
            | Image 2    | Game 2    | Play        | View Details         |
            | Image 3    | Game 3    | Play        | View Details         |
            (User clicks on the "Play" button) or (User clicks on the "View Details" button)
    
    Scenario 2: User doesn't see any games
        Given the user logs into MathPlayOpen
        When the user clicks on the "Home" button page
        Then the user should see a message "No games available"
        Example:
            (User logs into MathPlayOpen)
            => (User clicks on the "Home" button page)
            (User see the "Home" page)
            => (User sees a message "No games available")
    
    Scenario 3: Game section doesn't load
        Given the user logs into MathPlayOpen
        When the user clicks on the "Home" button page
        Then the user should see a message "Game section is not loading"
        Example:
            (User logs into MathPlayOpen)
            => (User clicks on the "Home" button page)
            (User see the "Home" page)
            => (User sees a Spinner loading on the section "Game")