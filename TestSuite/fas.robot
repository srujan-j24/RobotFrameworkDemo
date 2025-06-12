*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      Firefox
${url}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case verifies that user is able to successfully Login to the-internet.herokuapp
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Element Should Be Visible    locator
        Element Text Should Be    locator    expected
        Element Should Not Be Visible    locator
        Element Should Be Enabled    locator
        Element Should Be Disabled    locator
        Element Should Contain    locator    expected
        Element Attribute Value Should Be    locator    attribute    expected
        Element Should Be Focused    locator
        Element Should Not Contain    locator    expected
        Close Browser
