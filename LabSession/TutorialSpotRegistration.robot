*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}      https://www.tutorialspoint.com/selenium/practice/register.php

*** Test Cases ***
Performing registration
        [Documentation]     Fill in the registration form and submit the same
        Open Browser    ${url}  ${browser}
        Maximize Browser Window
        Wait Until Element Is Visible    xpath://input[@id='firstname']     timeout=5
        Input Text    xpath://input[@id='firstname']    Srujan
        Input Text    xpath://input[@id='lastname']    J
        Input Text    xpath://input[@id='username']    srujanj2003
        Input Text    xpath://input[@id='password']    notpassword
        Click Button    xpath://input[@value='Register']
        Sleep    1s
        Close Browser