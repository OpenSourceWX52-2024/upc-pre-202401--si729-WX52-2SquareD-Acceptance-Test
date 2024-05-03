Feature: Visualize game details
    Scenario 01: User can see the game details
        Case 01:
            Given I am a user who wants to see the game details
            When I am on the home page
            And I choose a game
            And I am on the game details page
            Then I should see the game details
            Examples:
                | game_name | game_details | game_picture |
                | game1     | details1     | picture1     |
                | game2     | details2     | picture2     |
                | game3     | details3     | picture3     |