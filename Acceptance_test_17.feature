Feature: Teacher visualize the student's progress
    Scenario 1: Teacher visualize the student's progress
        Given the teacher is logged in
        When the teacher clicks on the student's progress
        Then the teacher can see the student's progress
        Example:
        (Teacher log in teh site)
        (Teacher click on "Progress")
        =>(System show the classes of the students)
        (Teacher click on the student's name)
        =>(System show the student's progress)
        | Student's Name | Progress | Correct Answer | Wrong Answer | Percentage |
        | John Doe       | 90%      | 9              | 1            | 90%        |

    Scenario 2: Teacher visualize the class resume progress
        Given the teacher is logged in
        When the teacher clicks on the class resume progress
        Then the teacher can see the class resume progress
        Example:
        (Teacher log in teh site)
        (Teacher click on "Progress")
        =>(System show the classes of the students)
        (Teacher click on the class name)
        =>(System show the class resume progress)
        | Class Name | Progress Average | Correct Answer | Wrong Answer | Percentage |
        | Math       | 80%      | 8              | 2            | 80%        |

    Scenario 3: Teacher create a new class
        Given the teacher is logged in
        When the teacher clicks on the create class
        Then the teacher can create a new class
        Example:
        (Teacher log in teh site)
        (Teacher click on "Create Class")
        =>(System show the form to create a new class)
        (Teacher fill the form)
        =>(System create the class)
        | Class Name | Description | Students |
        | Math       | Math class  | John Doe |
        | Math       | Math class  | Jane Doe |