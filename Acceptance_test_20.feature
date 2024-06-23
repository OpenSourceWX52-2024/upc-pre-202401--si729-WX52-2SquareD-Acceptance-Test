Feature: Message between students
    Scenario 1: Student A sends a message to Student B
        Given Student A is logged in
        And Student B is logged in
        When Student A sends a message to Student B
        Then Student B should receive the message
        Examples:
            | Student A | Student B |
            | Alice     | Bob       |
            | Charlie   | David     |
            | Eve       | Frank     |
            (students are logged in and send messages to each other)
            (students receive messages from each other)
            => (System works correctly)

    Scenario 2: Student A does not send a message to Student B
        Given Student A is logged in
        And Student B is logged in
        When Student A does not send a message to Student B
        Then Student B should not receive the message
        Examples:
            | Student A | Student B |
            | Alice     | Bob       |
            | Charlie   | David     |
            | Eve       | Frank     |
            (students are logged in and do not send messages to each other)
            (students do not receive messages from each other)
            => (System works correctly)
    
    Scenario 3: Student A sends a message to Student B, but Student B is not logged in
        Given Student A is logged in
        And Student B is not logged in
        When Student A sends a message to Student B
        Then Student B should not receive the message
        Examples:
            | Student A | Student B |
            | Alice     | Bob       |
            | Charlie   | David     |
            | Eve       | Frank     |
            (students are logged in and do not send messages to each other)
            (students do not receive messages from each other)
            => (System works correctly)

    Scenario 4: Student A sends a message to Student B, but Student B is offline
        Given Student A is logged in
        And Student B is offline
        When Student A sends a message to Student B
        Then Student B should receive the message when they log in
        Examples:
            | Student A | Student B |
            | Alice     | Bob       |
            | Charlie   | David     |
            | Eve       | Frank     |
            (students are logged in and send messages to each other)
            (students receive messages from each other when they log in)
            => (System works correctly)

    Scenario 5: Student A sends a message to Student B, but Student B delete his account
        Given Student A is logged in
        And Student B deletes his account
        When Student A sends a message to Student B
        Then Student B should not receive the message
        Examples:
            | Student A | Student B |
            | Alice     | Bob       |
            | Charlie   | David     |
            | Eve       | Frank     |
            (students are logged in and send messages to each other)
            (students do not receive messages from each other)
            => (System works correctly)
    
    Scenario 6: Student A sends a message to Student B, but Student B blocks Student A
        Given Student A is logged in
        And Student B blocks Student A
        When Student A sends a message to Student B
        Then Student B should not receive the message
        Examples:
            | Student A | Student B |
            | Alice     | Bob       |
            | Charlie   | David     |
            | Eve       | Frank     |
            (students are logged in and send messages to each other)
            (students do not receive messages from each other)
            => (System works correctly)

    