Feature: Button Call to action (CTA) on the homepage
    Scenario 01: User can see the CTA  "plan premium" button 
        Case 01:
            Given the user is on the homepage
            When the user scrolls down the page
            Then the user can see the "plan premium" button
            Example:
            | user -|> button |
            | user1 -|> plan premium |

    Scenario 02: User can see the CTA  "plan free" button
        Case 01:
            Given the user is on the homepage
            When the user scrolls down the page
            Then the user can see the "plan free" button
            Example:
            | user -|> button |
            | user1 -|> plan free |