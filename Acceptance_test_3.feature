Feature: Get plan premium
    Scenario 01: Usser get plan premium
        Case 01:
            Given I want to get plan premium
            When I request to get plan premium
            And I pay for plan premium
            Then I should get plan premium
            Examples:
                | usser | plan | price | discount |
                | 1     | premium | 100   | 0       |
                | 2     | premium | 100   | 0       |

