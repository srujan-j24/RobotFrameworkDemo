*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}          https://facebook.com
${browser}      chrome


*** Test Cases ***
t1
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Capture Page Screenshot     C:/Users/srujx/Downloads/robo1.png
        Sleep    2s
        Capture Element Screenshot    xpath://img[@alt='Facebook']      C:/Users/srujx/Downloads/button.png
        Sleep    2s
        Close Browser
        

