Feature: Add a student to a class
    Scenario 1: Student is added to a class
        Given the student is not in the class
        When the student is added to the class
        Then the student is in the class
        Example:
        (Teacher logs in in the site)
        (Teacher goes to the class page)
        (Teacher clicks on the add student button)
        (Teacher types the student's name)
        (Teacher clicks on the add button)
        => System send a message to the student
        (Tecaher waits for the student to accept the invitation)
        | student's email| => System sends an email to the student
        (Student accepts the invitation)
        | student's email| => System sends a message to the teacher
        (Teacher goes to the class page)
        (Teacher sees the student in the class)|
    
    Scenario 2: Student is already in the class
        Given the student is in the class
        When the student is added to the class
        Then the student is still in the class
        Example:
        (Teacher logs in in the site)
        (Teacher goes to the class page)
        (Teacher clicks on the add student button)
        (Teacher types the student's name)
        (Teacher clicks on the add button)
        => System shows a message that the student is already in the class
        | student's email| => System sends a message to the teacher
        (Teacher goes to the class page)
        (System shows the student in the class)
        (Teacher sees the student in the class)|

    Scenario 3: Student is not in the system
        Given the student is not in the system
        When the student is added to the class
        Then the student is not in the class
        Example:
        (Teacher logs in in the site)
        (Teacher goes to the class page)
        (Teacher clicks on the add student button)
        (Teacher types the student's name)
        (Teacher clicks on the add button)
        => System shows a message that the student is not in the system
        | student's email| => System sends a message to the teacher
        (Teacher goes to the class page)
        (System shows the student is not in the class)
        (Teacher sees the student is not in the class)
        => message: "student doesn't exist"|
