Feature: Fill payment method
    Scenario 01: Fill payment method
        Case 01:
            Given I am on the payment page
            When I fill in the payment method form
            Then I should pay successfully 
            Example:
                | payment method | cvv | card number | expiration date | card holder name | 
                | credit card    | 123 | 1234567890  | 12/22           | John Doe         | 
                