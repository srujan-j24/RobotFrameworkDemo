*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}      https://the-internet.herokuapp.com/key_presses

*** Test Cases ***
t1
        Open Browser    ${url}      ${browser}
        Maximize Browser Window
        Press Keys    xpath://input[@id='target']    SHIFT+w
        Sleep    3s
        Close Browser
