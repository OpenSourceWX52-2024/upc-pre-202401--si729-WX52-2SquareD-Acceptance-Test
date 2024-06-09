Feature: Visualization of all students in a class
    Scenario 1: User Visualize resume general of score of all students in his class
        Given the user-teacher is logged in
        When the user-teacher click on his class
        Then teh user-teacher should see the resume general of score of all students in the class
        Example:
        (user-teacher) = (teacher1)
        (user-teacher select a class) = (class1)
        => (user-teacher) should see the resume general of score of all students in the class
        => System should display the resume general of score of all students in the class

    Scenario 2: User-teacher doesn't have any class
        Given the user-teacher is logged in
        When the user-teacher look for his class
        Then the user-teacher should see a message "You don't have any class"
        Example:
        (user-teacher) = (teacher1)
        (user-teacher select a class) = (class2)
        => (user-teacher) should see the resume general of score of all students in the class
        => System should not display the resume general of score of all students in the class
        => System shows spins
        => System shows a message "You don't have any class"

    Scenario 3: User-teacher doesn't have any student in his class
        Given the user-teacher is logged in
        When the user-teacher click on his class
        Then the user-teacher should see a message "You don't have any student in this class"
        Example:
        (user-teacher) = (teacher1)
        (user-teacher select a class) = (class3)
        => (user-teacher) should see the resume general of score of all students in the class
        => System should not display the resume general of score of all students in the class
        => System shows spins
        => System shows a message "You don't have any student in this class"

    Scenario 4: User-teacher wants see the resume general of score of all students in other class
        Given the user-teacher is logged in
        When the user-teacher click on other class
        Then the System shows a message "You don't have permission to see this class"
        Example:
        (user-teacher) = (teacher1)
        (user-teacher select a class) = (class4)
        => (user-teacher) should see the resume general of score of all students in other class
        => System should not display the resume general of score of all students in the class
        => System shows spins
        => System shows a message "You don't have permission to see this class"
        => System shows a button "Back to my class"