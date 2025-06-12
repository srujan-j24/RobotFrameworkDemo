*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
Library    Collections


*** Variables ***
${url}          https://the-internet.herokuapp.com/download
${url2}         https://demoqa.com/upload-download
${browser}      chrome


*** Test Cases ***
t1
        Open Browser    ${url}      ${browser}
        Maximize Browser Window
        Click Element    xpath://a[normalize-space()='Test.txt']
        Sleep    2s
        ${files}=       List Files In Directory     C:/Users/srujx/Downloads
        List Should Contain Value   ${files}     Test.txt
        Sleep    2s
        Close Browser
        
t2
        Open Browser    ${url2}     ${browser}
        Maximize Browser Window
        Click Element    xpath://a[@id='downloadButton']
        Sleep    2s
        ${files}=       List Files In Directory    C:/Users/srujx/Downloads
        List Should Contain Value   ${files}     sampleFile.jpeg
        Sleep    2s
        Close Browser
