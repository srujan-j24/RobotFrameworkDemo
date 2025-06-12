*** Keywords ***
logintoapplication
    Log To Console    user enters the username
    Log To Console    user enters the password
    Log To Console    user clicks the submit
    Log To Console    user navigates to home page


connect to db
    Log To Console    Connecting to DB

close db connection
    Log To Console    Closing DB connection
