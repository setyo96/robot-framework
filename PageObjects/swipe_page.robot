*** Settings ***
Library    AppiumLibrary

*** Variables ***
${SWIPE_TAB}         //android.widget.TextView[@text="Swipe"]
${SWIPE_CARD_1}      //android.widget.TextView[@text="FULLY OPEN SOURCE"]
${SWIPE_CARD_2}      //android.widget.TextView[@text="GREAT COMMUNITY"]

*** Keywords ***
Navigate To Swipe Screen
    Wait Until Element Is Visible ${SWIPE_TAB} timeout=20s
    Click Element${SWIPE_TAB}
    Wait Until Page Contains Element ${SWIPE_CARD_1} timeout=10s

Swipe Left
    ${width}= Get Window Width
    ${height}= Get Window Height
    ${start_x}= Evaluate ${width} * 0.9
    ${start_y}= Evaluate ${height} * 0.5
    ${end_x}= Evaluate ${width} * 0.1
    ${end_y}= Evaluate ${height} * 0.5
    Swipe ${start_x} ${start_y} ${end_x} ${end_y} 1000

Verify Second Card Visible
    Wait Until Element Is Visible ${SWIPE_CARD_2} timeout=10s
    Element Should Be Visible ${SWIPE_CARD_2}