*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}      https://www.saucedemo.com/

*** Test Cases ***
Login to SauceDemo
        [Documentation]     Login to saucedemo using username and password
        Open Browser    ${url}  ${browser}
        Maximize Browser Window
        Input Text    xpath://input[@id='user-name']    standard_user
        Input Text    xpath://input[@id='password']    secret_sauce
        Click Button    xpath://input[@id='login-button']
        Wait Until Element Is Visible    xpath://span[@class='title']   5s
        Close Browser

