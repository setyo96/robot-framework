*** Settings ***
Library    AppiumLibrary

*** Variables ***
${LOGIN_TAB}              //android.widget.TextView[@text="Login"]
${EMAIL_FIELD}            //android.widget.EditText[@text="Email"]
${PASSWORD_FIELD}         //android.widget.EditText[@text="Password"]
${LOGIN_BUTTON}           //android.widget.TextView[@text="LOGIN"]
${EMAIL_ERROR_MESSAGE}    //android.widget.TextView[contains(@text, "Please enter a valid email")]
${PASS_ERROR_MESSAGE}    //android.widget.TextView[contains(@text, "Please enter at least 8 characters")]
${SUCCESS_MESSAGE}        //android.widget.TextView[contains(@text, "You are logged in!")]

*** Keywords ***
Navigate To Login Screen
    Wait Until Element Is Visible    ${LOGIN_TAB}    timeout=20s
    Click Element    ${LOGIN_TAB}
    Wait Until Page Contains Element    ${EMAIL_FIELD}    timeout=10s

Enter Email
    [Arguments]    ${email}
    Input Text     ${EMAIL_FIELD}    ${email}

Enter Password
    [Arguments]   ${password}
    Input Text    ${PASSWORD_FIELD}    ${password}

Click Login
    Click Element   ${LOGIN_BUTTON}

Verify Login Success
    Wait Until Element Is Visible    ${SUCCESS_MESSAGE}    timeout=10s
    Element Should Be Visible    ${SUCCESS_MESSAGE}

Verify Email Error
    Wait Until Element Is Visible    ${EMAIL_ERROR_MESSAGE}    timeout=10s
    Element Should Be Visible    ${EMAIL_ERROR_MESSAGE}

Verify Password Error
    Wait Until Element Is Visible    ${PASS_ERROR_MESSAGE}    timeout=10s
    Element Should Be Visible    ${PASS_ERROR_MESSAGE}