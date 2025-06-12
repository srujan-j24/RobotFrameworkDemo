*** Settings ***
Library     SeleniumLibrary
Library    XML
Library    Collections

*** Variables ***
${browser}      Chrome
${url}      https://rahulshettyacademy.com/AutomationPractice/
${url2}     https://the-internet.herokuapp.com/checkboxes
${url3}     https://the-internet.herokuapp.com/dropdown
${url4}     https://demoqa.com/select-menu
*** Test Cases ***
Select radio button
        [Documentation]     Selecting radio button using robot
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Page Should Contain Radio Button    xpath://input[@class='radioButton']
        Select Radio Button    radioButton    radio2
        Close Browser

       
select a dropdown
        [Documentation]     Selecting a dropdown
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Wait Until Element Is Visible    xpath://select[@id='dropdown-class-example']
        Select From List By Index    xpath://select[@id='dropdown-class-example']   1
        Sleep    2s
        Close Browser
        
looping over elements
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        ${elements}=        Get WebElements    xpath://input[@class='radioButton']
        FOR    ${element}    IN    @{elements}
            Click Element    ${element}
            Sleep    2s
        END
        Close Browser


checkboxing
        Open Browser        ${url2}      ${browser}
        Maximize Browser Window
        Click Element    xpath://input[2]
        Sleep    2s
        Click Element    xpath://input[1]
        Sleep    2s
        Close Browser


Slecting with different methods
        Open Browser        ${url3}      ${browser}
        Maximize Browser Window
        Select From List By Index    //select[@id='dropdown']   1
        Sleep    2s
        Select From List By Value    //select[@id='dropdown']   2
        Sleep    2s
        Select From List By Label    //select[@id='dropdown']   Option 1
        Sleep    2s
        Close Browser


multi select dropdown
        Open Browser        ${url4}      ${browser}
        Maximize Browser Window
        Click Element    //div[contains(@class,'css-1pahdxg-control')]//div[contains(@class,'css-1hwfws3')]
        Sleep    5s
        Close Browser