*** Settings ***
Library           AppiumLibrary

*** Variables ***
${TXT_WELCOME_HOME}                //android.widget.TextView[@resource-id="com.telkomsel.telkomselcm:id/welcome" and @text="Ayo jadi bagian dari Telkomsel"]
${TXT_ACCOUNT_INFO}                //android.widget.TextView[@resource-id="com.telkomsel.telkomselcm:id/tv_account_info"]

*** Keywords ***
Verify Home Page
    Wait Until Element Is Visible    ${TXT_WELCOME_HOME}        timeout=10s
    Wait Until Element Is Visible    ${TXT_ACCOUNT_INFO}        timeout=10s
