*** Settings ***
Library    AppiumLibrary

*** Variables ***
${FORMS_TAB}           //android.widget.TextView[@text="Forms"]
${INPUT_FIELD}         //android.widget.EditText
${SWITCH_BUTTON}       //android.widget.Switch
${DROPDOWN_BUTTON}     //android.widget.EditText[@resource-id="text_input"]
${DROPDOWN_OPTION}     //android.widget.CheckedTextView[@text="webdriver.io is awesome"]
${ACTIVE_BUTTON}       //android.widget.TextView[@text="Active"]

*** Keywords ***
Navigate To Forms Screen
    Wait Until Element Is Visible ${FORMS_TAB} timeout=20s
    Click Element${FORMS_TAB}
    Wait Until Page Contains Element ${INPUT_FIELD} timeout=10s

Enter Input Text
    [Arguments]    ${text}
    Input Text     ${INPUT_FIELD}     ${text}

Toggle Switch
    Click Element${SWITCH_BUTTON}

Select From Dropdown
    Click Element${DROPDOWN_BUTTON}
    Wait Until Element Is Visible ${DROPDOWN_OPTION} timeout=10s
    Click Element${DROPDOWN_OPTION}

Click Active Button
    Click Element${ACTIVE_BUTTON}