*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case verifies that use is able to successfully Login to the orange HRM
        Open Browser    ${url}  ${browser}
        Maximize Browser Window
        Wait Until Element Is Visible    xpath://input[@placeholder='Username']     timeout=5
        Input Text    xpath://input[@placeholder='Username']    Admin
        Input Text    xpath://input[@placeholder='Password']    admin123
        Click Button    xpath://button[@type='submit']
        Wait Until Element Is Visible    xpath://p[normalize-space()='Time at Work']    timeout=5
        Sleep    5s
        Close Browser