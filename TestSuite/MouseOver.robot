*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}      https://amazon.in/

*** Test Cases ***
t1
        Open Browser    ${url}      ${browser}
        Maximize Browser Window
        
        Mouse Over    xpath://span[normalize-space()='Prime']
        Wait Until Element Is Visible    xpath://img[@id='multiasins-img-link']
        Click Element    xpath://img[@id='multiasins-img-link']
        Sleep    5s
        Close Browser