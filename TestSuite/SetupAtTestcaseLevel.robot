*** Test Cases ***
Login
    Setup
    Log To Console    Execute testcase1
    Log To Console    Loggin int to the application
    Teardown

AddToCart
    Setup
    Log To Console    Execute testcase1
    Log To Console    Adding the product to cart
    Teardown


*** Keywords ***
Setup
    Log To Console    Launchig the browser

Teardown
    Log To Console    CLoasing the browser