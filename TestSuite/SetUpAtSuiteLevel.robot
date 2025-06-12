*** Settings ***
Suite Setup     Launch Browser
Suite Teardown      Close the browser

*** Keywords ***
Launch Browser
        Log To Console     Launching the browser

Close the browser
        Sleep    2s
        Log To Console    Closing the browser


*** Test Cases ***
t1
    Log To Console    t1 executed
    
t2
    Log To Console    t2 executed