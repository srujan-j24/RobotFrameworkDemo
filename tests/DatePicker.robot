*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}      https://www.tutorialspoint.com/selenium/practice/date-picker.php

*** Test Cases ***
t1
        Open Browser    ${url}      ${browser}
        Maximize Browser Window
        Click Element    xpath://input[@id='datetimepicker1']
        Wait Until Element Is Visible    xpath://select[@aria-label='Month']
        Select From List By Value    xpath://select[@aria-label='Month']       4
        Input Text    xpath://input[@aria-label='Year']    2003
        Wait Until Element Is Visible    xpath://span[@aria-label='May 2, 2003']
        Click Element    xpath://span[@aria-label='May 2, 2003']

t2
        Click Element    xpath://input[@id='datetimepicker2']
        Wait Until Element Is Visible    xpath:(//select[@aria-label='Month'])[2]
        Select From List By Value    xpath:(//select[@aria-label='Month'])[2]      3
        Input Text    xpath:(//input[@aria-label='Year'])[2]    2025
        Wait Until Element Is Visible    xpath://span[@aria-label='April 21, 2025']
        Click Element    xpath://span[@aria-label='April 21, 2025']
        Input Text    xpath:(//input[@aria-label='Hour'])[2]    9
        Click Element    xpath://span[@title='Click to toggle'][normalize-space()='PM']
        Close Browser