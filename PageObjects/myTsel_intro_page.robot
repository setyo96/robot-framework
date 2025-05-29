*** Settings ***
Library           AppiumLibrary

*** Variables ***
${BTN_SKIP_INTRO}                   //android.widget.Button[@resource-id="com.telkomsel.telkomselcm:id/skip_btn"]
${ALLOW_NOTIFICATION_PERMISSION}    //android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]
${GREETING_FIRST_SCREEN_INTRO}      //android.widget.TextView[@resource-id="com.telkomsel.telkomselcm:id/title" and @text="Nikmati kemudahan beraktivitas dalam satu genggaman"]

*** Keywords ***
Finish Intro With Skip
    Click Element If Exists        ${ALLOW_NOTIFICATION_PERMISSION}

    Wait Until Element Is Visible    ${GREETING_FIRST_SCREEN_INTRO}    timeout=10s
    Wait Until Element Is Visible    ${BTN_SKIP_INTRO}                timeout=10s

    Run Keyword If    '${GREETING_FIRST_SCREEN_INTRO}' != '' and '${BTN_SKIP_INTRO}' != ''    Click Element    ${BTN_SKIP_INTRO}

Click Element If Exists
    [Arguments]    ${locator}
    ${exists}=    Run Keyword And Return Status    Element Should Be Visible    ${locator}    timeout=5s
    Run Keyword If    ${exists}    Click Element    ${locator}