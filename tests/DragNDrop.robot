*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}      https://the-internet.herokuapp.com/drag_and_drop

*** Test Cases ***
t1
        Open Browser    ${url}      ${browser}
        Maximize Browser Window
        Sleep    5s
        Drag And Drop    xpath://div[@id='column-a']    xpath://div[@id='column-b']
        Sleep    5s
        Close Browser