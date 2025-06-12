*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}      https://amazon.in/


*** Test Cases ***
t1
        Open Browser    ${url}      ${browser}
        Maximize Browser Window
        Open Context Menu    xpath://input[@id='twotabsearchtextbox']
        Sleep    5s
        Double Click Element    xpath://input[@id='twotabsearchtextbox']
        Sleep    5s
        Close Browser
