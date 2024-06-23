Feature: Game tags are now displayed in the game list.
    Scenario 1: Game tags redirected to a game category page.
        Given I am on the game list page
        When I click on a game tag
        Then I should be redirected to the game category page
        Example:
            (User is in the game list page)
            (System shows the game available on the site)
            => System shows the game details
            | Game Name | Game Tag 1 | Game Tag 2 | Game Tag 3 | Button Play |
            | Game 1    | Tag 1      | Tag 2      | Tag 3      | Play        |
            | Game 2    | Tag 1      | Tag 2      | Tag 3      | Play        |
            | Game 3    | Tag 1      | Tag 2      | Tag 3      | Play        |
            (User clicks on Game Tag 1)
            => System redirects to the game category  of tag 1 page
            (Subject game category page shows the games with tag 1)

    Scenario 2: Game tags redirected to a category page with no games.
        Given I am on the game list page
        When I click on a game tag
        Then I should be redirected to the game category page
        Example:
            (User is in the game list page)
            (System shows the game available on the site)
            => System shows the game details
            | Game Name | Game Tag 1 | Game Tag 2 | Game Tag 3 | Button Play |
            | Game 1    | Tag 1      | Tag 2      | Tag 3      | Play        |
            | Game 2    | Tag 1      | Tag 2      | Tag 3      | Play        |
            | Game 3    | Tag 1      | Tag 2      | Tag 3      | Play        |
            (User clicks on Game Tag 4)
            => System redirects to the game category  of tag 4 page
            => System shows no games available

    Scenario 3: Game tags redirected to a category of monoplayer or multiplayer.
        Given I am on the game list page
        When I click on a game tag
        Then I should be redirected to the game category page
            (User is in the game list page)
            (System shows the game available on the site)
            => System shows the game details
            | Game Name | Game Tag 1 | Game Tag 2 | Game Tag 3 | Button Play |
            | Game 1    | Tag 1      | Tag 2      | Tag 3      | Play        |
            | Game 2    | Tag 1      | Tag 2      | Tag 3      | Play        |
            | Game 3    | Tag 1      | Tag 2      | Tag 3      | Play        |
            (User clicks on Game Tag 2)
            => System redirects to the game category  of tag 2 page
            => System redirects to the game category  of multiplayer page
            (multiplayer) or (monoplayer)
    
    Scenario 4: Game tags redirected to games with plan free or premium
        Given I am on the game list page
        When I click on a game tag
        Then I should be redirected to the game category page
            (User is in the game list page)
            (System shows the game available on the site)
            => System shows the game details
            | Game Name | Game Tag 1 | Game Tag 2 | Game Tag 3 | Button Play |
            | Game 1    | Tag 1      | Tag 2      | Tag 3      | Play        |
            | Game 2    | Tag 1      | Tag 2      | Tag 3      | Play        |
            | Game 3    | Tag 1      | Tag 2      | Tag 3      | Play        |
            (User clicks on Game Tag 3)
            => System redirects to the game category  of tag 3 page
            => System redirects to the game category  of free page
            (free) or (premium)