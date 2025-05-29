*** Settings ***
Documentation    Test suite for testing login functionality
Resource         ../Resources/common.robot
Resource         ../PageObjects/login_page.robot
Suite Setup      Open WDIO Demo Application
Suite Teardown   Close WDIO Demo Application
Test Teardown    Go Back

*** Test Cases ***
# Valid Login Should Succeed
#     [Documentation]    Test the login with valid credentials
#     Navigate To Login Screen
#     Enter Email        test@example.com
#     Enter Password     Password123
#     Click Login
#     Verify Login Success

# Invalid Email Should Show Error
#     [Documentation]    Test login with invalid email format
#     Navigate To Login Screen
#     Enter Email        invalid-email
#     Enter Password     Password123
#     Click Login
#     Verify Email Error

Short Password Should Show Error
    [Documentation]    Test login with short password
    Navigate To Login Screen
    Enter Email        test@example.com
    Enter Password     short
    Click Login
    Verify Password Error