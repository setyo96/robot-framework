*** Settings ***
Documentation    Test suite for swipe functionality
Resource         ../Resources/common.robot
Resource         ../PageObjects/swipe_page.robot
Suite Setup      Open WDIO Demo Application
Suite Teardown   Close WDIO Demo Application

*** Test Cases ***
Should Swipe Between Cards
    [Documentation] Test swiping between cards
    Navigate To Swipe Screen
    Page Should Contain Text FULLY OPEN SOURCE
    Swipe Left
    Verify Second Card Visible