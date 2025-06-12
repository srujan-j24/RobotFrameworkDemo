*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}      https://the-internet.herokuapp.com/windows



*** Test Cases ***
t1
        Open Browser    ${url}      ${browser}
        Maximize Browser Window
        Click Element    xpath://a[normalize-space()='Click Here']
        Switch Window   title:New Window
        Sleep    4s
        Element Text Should Be    xpath://h3    New Window
        Switch Window   title:The Internet
        Element Text Should Be    xpath://h3    Opening a new window
        Sleep    4s
        Close Browser