Feature: Join to a new competition game
    Scenario 1: Student want to join to a new competition game
        Given the student is in the main menu
        When the student clicks on the "Join to a new competition game" button
        Then the student is redirected to the "Game competition" page
        Example:
        (Student login in in the site)
        (Student is in the  "Home" page)
        (Student clicks on the "Join to a new competition game" button)
        (Student is redirected to the "Game competition" page)
        => The student is in the "Game competition" page
        | Student => "Game competition" page 
        (Student is in the "Game competition" page)
        (Student clicks on the "Join to a new competition game" button) |

    Scenario 2: Student can't join to a new competition game
        Given the student is in the main menu
        When the student clicks on the "Join to a new competition game" button
        Then the student is redirected to the "Game competition" page
        Example:
        (Student login in in the site)
        (Student is in the  "Home" page)
        (Student clicks on the "Join to a new competition game" button)
        (Student is redirected to the "Game competition" page)
        => The student is in the "Game competition" page
        | Student => "Game competition" page 
        (Student is in the "Game competition" page)
        (Student clicks on the "Join to a new competition game" button) |
        => System shows a message "You can't join to a new competition game"

    Scenario 3: Game competition doesn't exist
        Given the student is in the main menu
        When the student clicks on the "Join to a new competition game" button
        Then the student is redirected to the "Game competition" page
        Example:
        (Student login in in the site)
        (Student is in the  "Home" page)
        (Student clicks on the "Join to a new competition game" button)
        (Student is redirected to the "Game competition" page)
        => The student is in the "Game competition" page
        | Student => "Game competition" page 
        (Student is in the "Game competition" page)
        (Student clicks on the "Join to a new competition game" button) |
        => System shows a message "Game competition doesn't exist"

    Scenario 4: Game competition is full
        Given the student is in the main menu
        When the student clicks on the "Join to a new competition game" button
        Then the student is redirected to the "Game competition" page
        Example:
        (Student login in in the site)
        (Student is in the  "Home" page)
        (Student clicks on the "Join to a new competition game" button)
        (Student is redirected to the "Game competition" page)
        => The student is in the "Game competition" page
        | Student => "Game competition" page 
        (Student is in the "Game competition" page)
        (Student clicks on the "Join to a new competition game" button) |
        => System shows a message "Game competition is full"
        