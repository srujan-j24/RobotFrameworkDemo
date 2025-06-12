*** Settings ***
Library     SeleniumLibrary
Variables       ./../variables.py

*** Variables ***
${name}     John
${city}     Bangalore
@{list1}        green       red     blue
&{dict}     username=Admin      password=admin123



*** Test Cases ***
Defined variables
        Log To Console    ${name}
        Log    ${name}
        Log To Console    ${city}
        Log    ${city}
        Log    ${list1[0]}
        Log To Console    ${list1}
        FOR    ${element}    IN    @{list1}
            Log    ${element}
        END
        Log    ${dict}[username]
        Log    ${dict}[password]

Set Variables at Test Level
        Set Test Variable    ${address}     ringroad
        Log    ${address}


Set Variables at Gobal Level
    Log    ${username}
    Log    ${password}