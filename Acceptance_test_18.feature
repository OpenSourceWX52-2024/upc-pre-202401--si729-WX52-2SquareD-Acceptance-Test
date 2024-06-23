Feature: Join to a existing class
    Scenario 1: Class is full
        Given the class is full
        When I try to join the class
        Then I should see a message that the class is full
        Example:
        (Student logs in in the site)
        (Student recive a notification for join to a class)
        (student click in the notification)
        => (System show a message that the class is full)
        => (Student can't join to the class)
        (Student close the notification)
        | Student | Class | Status |
        | 1       | 1     | Full   |

    Scenario 2: Class is not full
        Given the class is not full
        When I try to join the class
        Then I should see a message that I joined the class
        Example:
        (Student logs in in the site)
        (Student recive a notification for join to a class)
        (student click in the notification)
        => (System show a message that the student joined the class)
        => (Student can join to the class)
        (Student close the notification)
        | Student | Class | Status |
        | 1       | 1     | available |

    Scenario 3: Class is not available
        Given the class is not available
        When I try to join the class
        Then I should see a message that the class is not available
        Example:
        (Student logs in in the site)
        (Student recive a notification for join to a class)
        (student click in the notification)
        => (System show a message that the class is not available)
        => (Student can't join to the class)
        (Student close the notification)
        message: "The class is not available"

    Scenario 4: Class doesn't exist
        Given the class doesn't exist
        When I try to join the class
        Then I should see a message that the class doesn't exist
        Example:
        (Student logs in in the site)
        (Student recive a notification for join to a class)
        (student click in the notification)
        => (System show a message that the class doesn't exist)
        => (Student can't join to the class)
        (Student close the notification)
        message: "The class doesn't exist"
