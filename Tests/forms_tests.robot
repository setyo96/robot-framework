*** Settings ***
Documentation    Test suite for testing forms functionality
Resource         ../Resources/common.robot
Resource         ../PageObjects/forms_page.robot
Suite Setup      Open WDIO Demo Application
Suite Teardown   Close WDIO Demo Application

*** Test Cases ***
Should Interact With Form Elements
    [Documentation] Test various form interactions
    Navigate To Forms Screen
    Enter Input Text Hello Robot Framework
    Toggle Switch
    Select From Dropdown
    Click Active Button
    Page Should Contain Text This button is active