*** Settings ***
#Library     DataDriver      C:/Users/srujx/PycharmProjects/PythonProject/TestData/ddtLogindata.xlsx     sheet_name=ddtLogindata
Library     DataDriver      C:/Users/srujx/PycharmProjects/PythonProject/TestData/ddtLogindataCSV(in).csv     sheet_name=ddtLogindata
Library     SeleniumLibrary

#Suite Setup     Launch
#Suite Teardown  Close
Test Template   Invalid Login

*** Variables ***
${browser}      chrome
${url}          https://admin-demo.nopcommerce.com/login


*** Test Cases ***
Login with user ${username} and ${password}     Default UserData


*** Keywords ***
Launch
    Open Browser    ${url}      ${browser}
    Maximize Browser Window

Close
    Close Browser

Open Login Page
    Go To    ${url}

Set Email
    [Arguments]     ${username}
    Wait Until Element Is Visible    xpath://input[@id='Email']
    Input Text    xpath://input[@id='Email']    ${username}

Set Password
    [Arguments]     ${password}
    Input Text    xpath://input[@id='Password']    ${password}

Click Login
    Click Element    xpath://button[@type='submit']

Error msg shoud be visible
    Element Should Be Visible    //span[@id='Email-error']

Invalid Login
    [Arguments]     ${username}        ${password}
    Launch
    Open Login Page
    Set Email    ${username}
    Sleep    2s
    Set Password    ${password}
    Sleep    2s
    Click Login
    Sleep    2s
    Error msg shoud be visible
    Sleep    2s
    Close



