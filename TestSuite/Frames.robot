*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}      https://jqueryui.com/datepicker/

*** Test Cases ***
t1
        Open Browser    ${url}      ${browser}
        Maximize Browser Window
        Select Frame    xpath://iframe[@class='demo-frame']
        Sleep    2s
        Click Element    xpath://input[@id='datepicker']
        Sleep    5s
        Close Browser


