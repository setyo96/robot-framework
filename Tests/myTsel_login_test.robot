*** Settings ***
Documentation    Test suite for testing login functionality
Resource         ../Resources/common.robot
Resource         ../PageObjects/myTsel_intro_page.robot
Resource         ../PageObjects/myTsel_home_page.robot
Resource         ../PageObjects/myTsel_login_page.robot
Suite Setup      Open WDIO Demo Application
Suite Teardown   Close WDIO Demo Application
Test Teardown    Go Back

*** Test Cases ***
Skip Intro Page
    [Documentation]    Skip intro page before login
    Finish Intro With Skip

Verify Home Page
    [Documentation]    Verify Home page before login
    Verify Home Page

Login Using Invalid Phone Number Format
    [Documentation]    Test login with invalid Phone number format
    Navigate To Login Screen
    Tap Option Login With Phone Number
    Enter Phone Number    000000000  
    Verify Invalid Phone Number Format Error
    
Login Using Phone Number Below the Requirement
    [Documentation]    Test login with Phone Number Below the Requirement
    Tap Option Login With Phone Number
    Clear Phone Number
    Enter Phone Number    0822345
    Verify Login Phone Number Use Below the Requirement Error

Login Using Phone Number Above the Requirement
    [Documentation]    Test login with Phone Number Above the Requirement
    Tap Option Login With Phone Number
    Clear Phone Number
    Enter Phone Number    0822345307691044
    Verify Login Phone Number Use Above the Requirement Error

Login Using Valid Phone Number
    [Documentation]    Test login with Valid Phone Number
    Tap Option Login With Phone Number
    Clear Phone Number
    Enter Phone Number    082116772710
    Click Login
    Verify Login Valid Phone Number