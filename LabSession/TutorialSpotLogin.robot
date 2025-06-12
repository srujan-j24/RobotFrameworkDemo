*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}      https://www.tutorialspoint.com/selenium/practice/login.php

*** Test Cases ***
Performing Logging In
        [Documentation]     Fill in the login form and submit the same
        Open Browser    ${url}  ${browser}
        Input Text    xpath://input[@id='email']    srujanj2003@example.com
        Input Text    xpath://input[@id='password']    notpassword
        Click Button    xpath://input[@value='Login']
        Sleep    5s
        Close Browser