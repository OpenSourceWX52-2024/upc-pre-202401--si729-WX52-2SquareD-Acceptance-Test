Feature: Change plan to use the new plan
    Scenario 1: Update plan free to premium
        Given the user is on the plan page
        And the user is on the free plan
        And the user wants to change to the premium plan
        When the user clicks on the change plan button
        And the user confirms the change
        And the user is redirected to the payment page
        And the user completes the payment
        Then the user should be on the premium plan
        Example:
            (User visualization of the plan page)
            | plan  |
            | free  |
            (User clicks on the change plan button)
            | plan  | type   |
            | premium | basic |
            => System shows alert message to confirm the change
            (User confirms the change)
            => System redirects to the payment page
            (User completes the payment)
            => System shows the payment confirmation
            (System changes the plan to premium)
            => Plan page shows the premium plan

    Scenario 2: Update plan premium to free
        Given the user is on the plan page
        And the user is on the premium plan
        And the user wants to change to the free plan
        When the user clicks on the change plan button
        And the user confirms the change
        And the user is redirected to the payment page
        And the user completes the payment
        Then the user should be on the free plan
        Example:
            (User visualization of the plan page)
            | plan  |
            | premium  |
            (User clicks on the change plan button)
            | plan  | type   |
            | free | premium |
            => System shows alert message to confirm the change
            (User confirms the change)
            => System changes the plan to free
            => Plan page shows the free plan