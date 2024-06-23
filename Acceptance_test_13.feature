Feature: Selecting a Role for a User

    Scenario 1: Selecting a Role for a user student
        Given I am in the sign up page
        When I select the role student
        Then I should see the student role selected
        Example:
            (User in the sign up page)
            | username | password | role    |
            | user1    | pass1    | student |
            => (User selected the role student)

    Scenario 2: Selecting a Role for a user teacher
        Given I am in the sign up page
        When I select the role teacher
        Then I should see the teacher role selected
        Example:
            (User in the sign up page)
            | username | password | role    |
            | user1    | pass1    | teacher |
            => (User selected the role teacher)

    Scenario 3: User can select only one role
        Given I am in the sign up page
        When I want to select the role student
        And I select the role teacher
        Then I should see the teacher role selected
        Example:
            (User in the sign up page)
            | username | password | role    |
            | user1    | pass1    | teacher |
            => (User selected the role teacher)

    Scenario 4: User can't select a role if it's not a student or teacher
        Given I am in the sign up page
        When I don't want to select the role 
        Then the System should select the default role selected
        Example:
            (User in the sign up page)
            (User didn't select any role)
            | username | password | role    |
            | user1    | pass1    |  student  |
            => (System default selected the role student)

    Scenario 5: User can't select a role if it's not a student or teacher
        Given I am in the sign up page
        When I don't want to select any role
        Then I can't access the sign up function
        Example:
            (User in the sign up page)
            (User didn't select any role)
            | username | password | role    |
            | user1    | pass1    |  - |
            (User can't select any role)
            => (User can't access the sign up function)
            => (System doesn't allow the user to sign up)