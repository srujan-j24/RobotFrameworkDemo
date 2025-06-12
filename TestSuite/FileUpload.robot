*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${path}         C:/Users/srujx/Downloads/testingScreenShot.png
${url}          https://the-internet.herokuapp.com/upload
${browser}      chrome
${url2}         https://demoqa.com/upload-download


*** Test Cases ***
t1
        Open Browser    ${url}      ${browser}
        Maximize Browser Window
        Choose File    xpath://input[@id='file-upload']    ${path}
        Sleep    2s
        Click Element    xpath://input[@id='file-submit']
        Wait Until Element Is Visible    xpath://h3[normalize-space()='File Uploaded!']
        ${text}=    Get Text    xpath://h3[normalize-space()='File Uploaded!']
        Log To Console    ${text}
        Sleep    5s
        Close Browser
        
t2
        Open Browser    ${url2}     ${browser}
        Maximize Browser Window
        Choose File    xpath://input[@id='uploadFile']    ${path}
        Wait Until Element Is Visible    xpath://p[@id='uploadedFilePath']
        Sleep    2s
        Close Browser