*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Verify login functionality
    [Tags]      Sanity
    Log    user enters the username
    Log    user enters the password
    Log    user clicks on the login button
    Log    user is navigated to home page


*** Test Cases ***
Verify login functionality with keyword
    Set Tags        Regression
    Login


*** Keywords ***
Login
        Log    user enters the username
        Log    user enters the password
        Log    user clicks on the login button
        Log    user is navigated to home page
