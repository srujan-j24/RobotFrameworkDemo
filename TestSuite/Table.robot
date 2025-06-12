*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}      https://the-internet.herokuapp.com/tables



*** Test Cases ***
t1
        Open Browser    ${url}      ${browser}
        Maximize Browser Window
        Table Cell Should Contain    xpath://table[@id='table1']    5    1    Conway
        Table Cell Should Contain    xpath://table[@id='table1']    2    2    John

        Sleep    3s
        Close Browser