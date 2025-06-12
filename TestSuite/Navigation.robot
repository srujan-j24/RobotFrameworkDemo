*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}          https://facebook.com
${browser}      chrome


*** Test Cases ***
t1
        Open Browser        ${url}      ${browser}
        Go To    https://amazon.in
        Sleep    5s
        Go Back
        Sleep    5s
        Reload Page
        Sleep    10s
        Close Browser
