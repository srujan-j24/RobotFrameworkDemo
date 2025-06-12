*** Settings ***
Resource    ../Resource/resource.robot
*** Test Cases ***
Login
    Login

AddToCart
    AddToCart


*** Keywords ***

Login
        [SetUP]         connect to db
        [Teardown]      close db connection
        Log To Console    Loggin to application
        Log To Console    user enters the username
        Log To Console    user enters the password
        Log To Console    user clicks the login button
        Log To Console    user is navigated to home page

AddToCart
        [SetUP]         connect to db
        [Teardown]      close db connection
        Log To Console    Adding products to car
        Log To Console    user enters the username
        Log To Console    user enters the password
        Log To Console    user clicks the login button
        Log To Console    user is navigated to home page
        Log To Console    user adds the product to cart
        Log To Console    user validates that the product is added to cart