*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}      https://jqueryui.com/tabs/



*** Test Cases ***
t1
        Open Browser    ${url}      ${browser}
        Maximize Browser Window
        Select Frame    xpath://iframe[@class='demo-frame']
        Click Element    xpath://a[@id='ui-id-2']
        Sleep    3s
        Click Element    xpath://a[@id='ui-id-3']
        Sleep    3s
        Close Browser
