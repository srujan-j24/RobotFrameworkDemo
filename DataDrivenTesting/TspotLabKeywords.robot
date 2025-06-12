*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
Wait for Page Load
    Wait Until Element Is Visible    xpath://h1[@class='mb-3 fw-normal border-bottom text-left pb-2 mb-4']

Enter Name
    [Arguments]     ${name}
    Input Text    xpath://input[@id='name']    ${name}
    
Enter Email
    [Arguments]     ${email}
    Input Text    xpath://input[@id='email']    ${email}

Choose Gender
    [Arguments]     ${gender}
    IF    ${gender} == Male
         Click Element    xpath://input[@id='gender']
    ELSE IF ${gender} == Female
        Click Element    xpath://div[3]//div[1]//div[1]//div[2]//input[1]
    ELSE
        Click Element    xpath://div[3]//div[1]//div[1]//div[3]//input[1]
    END

Enter Mobile No
    [Arguments]     ${mobileNo}
    Input Text    xpath://input[@id='mobile']    ${mobileNo}

Enter DoB
    [Arguments]     ${dob}
    Input Text    xpath://input[@id='dob']    ${dob}

Enter Subject
    [Arguments]     ${subject}
    Input Text    xpath://input[@id='subjects']    ${subject}

Choose Hobbies
    [Arguments]     ${sports}   ${reading}      ${music}
    IF    ${sports} == Yes
        Click Element    xpath://input[@id='hobbies'] 
    END
    IF    ${reading} == Yes
        Click Element    xpath://div[7]//div[1]//div[1]//div[2]//input[1]
    END
    IF    ${music} == Yes
        Click Element    xpath://div[7]//div[1]//div[1]//div[3]//input[1]
    END
    
Choose Picture
    [Arguments]     ${path}
    Choose File    xpath://input[@id='picture']    ${path}
    
Enter Address
    [Arguments]     ${address}
    Input Text    xpath://textarea[@id='picture']    ${address}

Select State
    [Arguments]     ${state}
    Select From List By Label    xpath://select[@id='state']    ${state}

Select city
    [Arguments]     ${city}
    Select From List By Label    xpath://select[@id='city']     ${city}
    
Submit
    Click Element    xpath://input[@value='Login']