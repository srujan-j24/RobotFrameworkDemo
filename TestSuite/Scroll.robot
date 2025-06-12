*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}          https://amazon.in/
${browser}      chrome


*** Test Cases ***
t1
        Open Browser    ${url}      ${browser}
        Maximize Browser Window
        Wait Until Element Is Visible    xpath://a[normalize-space()='About Amazon']
        Scroll Element Into View    xpath://a[normalize-space()='About Amazon']
        Sleep    2s
        Click Element    xpath://a[normalize-space()='About Amazon']
        Wait Until Element Is Visible    xpath://div[@class='Page-header-bar']//span[1]//a[1]
        Sleep    3s
        Close Browser