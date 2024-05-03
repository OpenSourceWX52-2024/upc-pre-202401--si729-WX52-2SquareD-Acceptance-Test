Feature: Visualize academically report data 
    Scenario 01: View my report academically data
        Case 01:
            Given the user is on the report page
            When the user views the report data
            Then the user should see the report data
            Example:
                | usser1 | report1 |
                | usser2 | report2 |