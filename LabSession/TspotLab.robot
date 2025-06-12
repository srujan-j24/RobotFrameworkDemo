*** Settings ***
Library     SeleniumLibrary
Library     DataDriver      C:/Users/srujx/PycharmProjects/PythonProject/TestData/tspotData.csv     sheet_name=tspotData
Resource    ./../DataDrivenTesting/TspotLabKeywords.robot
Suite Setup     Setup
Suite Teardown  Teardown
Test Template   Fill Form

*** Variables ***
${url}          https://www.tutorialspoint.com/selenium/practice/selenium_automation_practice.php
${browser}      chrome

*** Keywords ***
Setup
    Open Browser    ${url}      ${browser}
    Maximize Browser Window

Teardown
    Sleep    5s
    Close Browser

Fill Form
    [Arguments]     ${name}     ${email}    ${gender}    ${mobileNo}    ${dob}  ${sports}   ${reading}  ${music}    ${path}     ${address}  ${state}    ${city}
    Wait for Page Load
    Enter Name    ${name}
    Enter Email    ${email}
    Choose Gender    ${gender}
    Enter Mobile No    ${mobileNo}
    Enter DoB    ${dob}
    Choose Hobbies    ${sports}    ${reading}    ${music}
    Choose Picture    ${path}
    Enter Address    ${address}
    Select State    ${state}
    Select city    ${city}
    Submit


*** Test Cases ***
form test   Default UserData

