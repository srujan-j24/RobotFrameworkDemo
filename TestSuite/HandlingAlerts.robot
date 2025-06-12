*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://the-internet.herokuapp.com/javascript_alerts
${url2}     https://demoqa.com/alerts
${browser}      chrome

*** Test Cases ***
test1
        Open Browser    ${url}      ${browser}
        Maximize Browser Window
        Click Element    xpath://button[@onclick='jsAlert()']
        Sleep    2s
        Handle Alert    action=ACCEPT       timeout=3
        Sleep    2s
        Click Element    xpath://button[@onclick='jsConfirm()']
        Sleep   2s
        Handle Alert    action=DISMISS      timeout=3
        Sleep    2s
        Click Element    xpath://button[@onclick='jsPrompt()']
        Input Text Into Alert    hello
        Sleep   4s
        Close Browser

test2
        Open Browser    ${url2}      ${browser}
        Maximize Browser Window
        Sleep   2s
        Click Element    xpath://button[@id='alertButton']
        Handle Alert     action=ACCEPT
        Sleep   2s
        Click Element    xpath://button[@id='timerAlertButton']
        Sleep    7s
        Handle Alert    action=ACCEPT
        Sleep   2s
        Click Element    xpath://button[@id='confirmButton']
        Handle Alert    action=DISMISS
        Sleep   2s
        Click Element    xpath://button[@id='promtButton']
        Input Text Into Alert    Srujan J
        Sleep   2s