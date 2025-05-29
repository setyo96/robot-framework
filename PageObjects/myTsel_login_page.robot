*** Settings ***
Library    AppiumLibrary

*** Variables ***
${NAV_PROFILE}                    //android.widget.FrameLayout[@resource-id="com.telkomsel.telkomselcm:id/ic_account"]
${BTN_OPT_LOGIN_PHONE_NUMBER}    //android.widget.TextView[@resource-id="com.telkomsel.telkomselcm:id/title" and @text="Masuk dengan Nomor Telkomsel"]
${BTN_CONTINUE_LOGIN}            //android.widget.Button[@resource-id="com.telkomsel.telkomselcm:id/btSecondTypePrimary"]
${INPUT_PHONE_NUMBER}            //android.widget.EditText[@resource-id="com.telkomsel.telkomselcm:id/etLoginForm"]
${SUCCESS_LOGIN}                //android.widget.ImageView[@resource-id="com.telkomsel.telkomselcm:id/ivProfile"]
${ERROR_INVALID_FORMAT}          //android.widget.TextView[@resource-id="com.telkomsel.telkomselcm:id/tvLoginFormError" and @text="Masukkan nomor ponsel dengan benar"]
${ERROR_INVALID_REQ}            //android.widget.TextView[@resource-id="com.telkomsel.telkomselcm:id/tvLoginFormError" and @text="Mohon masukkan nomor Telkomsel yang sah (9-13 karakter)"]

*** Keywords ***
Navigate To Login Screen
    Wait Until Element Is Visible    ${NAV_PROFILE}    timeout=20s
    Click Element    ${NAV_PROFILE}
    Wait Until Page Contains Element    ${BTN_OPT_LOGIN_PHONE_NUMBER}    timeout=10s

Tap Option Login With Phone Number
    Wait Until Element Is Visible    ${BTN_OPT_LOGIN_PHONE_NUMBER}    timeout=20s
    Click Element    ${BTN_OPT_LOGIN_PHONE_NUMBER}
    Wait Until Page Contains Element    ${INPUT_PHONE_NUMBER}
    
Enter Phone Number
    [Arguments]    ${phoneNumber}
    Input Text     ${INPUT_PHONE_NUMBER}    ${phoneNumber}

Clear Phone Number
    Clear Text     ${INPUT_PHONE_NUMBER}

Click Login
    Wait Until Element Is Visible    ${BTN_CONTINUE_LOGIN}
    Click Element    ${BTN_CONTINUE_LOGIN}

Verify Invalid Phone Number Format Error
    Wait Until Element Is Visible    ${ERROR_INVALID_FORMAT}    timeout=10s
    Element Should Be Visible    ${ERROR_INVALID_FORMAT}

Verify Login Phone Number Use Below the Requirement Error
    Wait Until Element Is Visible    ${ERROR_INVALID_REQ}    timeout=10s
    Element Should Be Visible    ${ERROR_INVALID_REQ}

Verify Login Phone Number Use Above the Requirement Error
    Wait Until Element Is Visible    ${ERROR_INVALID_REQ}    timeout=10s
    Element Should Be Visible    ${ERROR_INVALID_REQ}

Verify Login Valid Phone Number
    Wait Until Element Is Visible    ${SUCCESS_LOGIN}    timeout=60s
    Element Should Be Visible    ${SUCCESS_LOGIN}