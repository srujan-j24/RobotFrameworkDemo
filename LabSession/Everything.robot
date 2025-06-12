*** Settings ***
Library     SeleniumLibrary
Suite Setup         Setup
Suite Teardown      Teardown

*** Variables ***
${browser}      Chrome
${url}      https://omayo.blogspot.com/


*** Keywords ***
Setup
        Open Browser        ${url}      ${browser}
        Maximize Browser Window

Teardown
        Sleep    3s
        Close Browser

GoToURL
        [Arguments]     ${elementXpath}
        Go To    ${url}
        Wait Until Element Is Visible       ${elementXpath}

*** Test Cases ***
t1
        [Documentation]     Testing Multi Selection box
        GoToURL     elementXpath=xpath://select[@id='multiselect1']
        Select From List By Value    xpath://select[@id='multiselect1']     volvox      audix

t2
        [Documentation]     Testing a normal dropdown
        GoToURL     elementXpath=xpath:////select[@id='drop1']
        Select From List By Value    xpath:////select[@id='drop1']      def

t3
        [Documentation]     Testing the link
        GoToURL     elementXpath=xpath:////a[@id='link1']
        Click Element    xpath:////a[@id='link1']
        Wait Until Element Is Visible    //img[@id='Header1_headerimg']

t4
        [Documentation]     Testing login using username and password
        GoToURL    xpath://form[@name='form1']//input[@type='text']
        Input Text    xpath://form[@name='form1']//input[@type='text']    srujanj2003
        Input Password    xpath://form[@name='form1']//input[@type='password']    notpassword
        Click Element    xpath://button[@value='LogIn']


#t5
#        [Documentation]     Testing jfkdkfjkd;lk



    

