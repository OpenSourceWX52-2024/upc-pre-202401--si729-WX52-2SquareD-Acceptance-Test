Feature: Tags functionality for the game details
    Scenario 1: User Tag of type "Genre" is added to the game details
        Given I am on the game details page
        When I select a tag 1 of type "Genre"
        Then System redirected to the games of the type "Genre"
        Example:
        (User select a game)
        => (User is on the game details page)
        (User is on the game details page)
        (User selects a tag 1 of type "Genre")
        | Game Name | Genre | Type | Plan |
        | Game 1 | Action | Single Player | Free |
        => (System redirected to the games of the type "Genre")
        | Game Name | Genre |
        | Game 1 | Action |
        | Game 2 | Action |
        | Game 3 | Action |
        
    Scenario 2: User Tag of type "Type" is added to the game details
        Given I am on the game details page
        When I select a tag 1 of type "Type"
        Then System redirected to the games of the type "Type"
        Example:
        (User select a game)
        => (User is on the game details page)
        (User is on the game details page)
        (User selects a tag 1 of type "Type")
        (Options: Single Player or Multiplayer)
        | Game Name | Genre | Type | Plan |
        | Game 1 | Action | Single Player | Free |
        => (System redirected to the games of the type "Type")
        | Game Name | Type |
        | Game 1 | Single Player |
        | Game 2 | Single Player |
        | Game 3 | Single Player |
    
    Scenario 3: User Tag of type "Plan" is added to the game details
        Given I am on the game details page
        When I select a tag 1 of type "Plan"
        Then System redirected to the games of the type "Plan"
        Example:
        (User select a game)
        => (User is on the game details page)
        (User is on the game details page)
        (User selects a tag 1 of type "Plan")
        (Options: Free or Premium)
        | Game Name | Genre | Type | Plan |
        | Game 1 | Action | Single Player | Free |
        => (System redirected to the games of the type "Plan")
        | Game Name | Plan |
        | Game 1 | Free |
        | Game 2 | Free |
        | Game 3 | Free |

    Scenario 4: any tag redirected to any pages
        Given I am on the game details page
        When I select a tag 1 of type "Genre"
        And I select a tag 2 of type "Type"
        And I select a tag 3 of type "Plan"
        Then System redirected to the games of the type "Genre", "Type", "Plan"
        Example:
        (User select a game)
        => (User is on the game details page)
        (User is on the game details page)
        (User selects a tag 1 of type "Genre")
        (User selects a tag 2 of type "Type")
        (User selects a tag 3 of type "Plan")
        | Game Name | Genre | Type | Plan |
        | Game 1 | Action | Single Player | Free |
        => (System redirected to the games of the type "Genre", "Type", "Plan")
        | Game Name | Genre | Type | Plan |
        | Game 1 | Action | Single Player | Free |
        | Game 2 | Action | Single Player | Free |
        | Game 3 | Action | Single Player | Free |
    
    Scenario 5: No one tags functionality
        Given I am on the game details page
        When i want to select a tag
        Then System doesn't redirect to any page
        Example:
        (User select a game)
        => (User is on the game details page)
        (User is on the game details page)
        (User selects a tag)
        (Tag doesn't present a functionality)
        => (System doesn't redirect to any page)

    Scenario 6: No tags are selected
        Given I am on the game details page
        When I don't select any tag
        Then System doesn't redirect to any page
        Example:
        (User select a game)
        => (User is on the game details page)
        (User is on the game details page)
        (User doesn't select any tag)
        => (System doesn't redirect to any page)

    Scenario 7: No tags exist
        Given I am on the game details page
        When I don't see any tags
        Then System doesn't redirect to any page
        Example:
        (User select a game)
        => (User is on the game details page)
        (User is on the game details page)
        (User doesn't see any tags)
        => (System doesn't redirect to any page)


