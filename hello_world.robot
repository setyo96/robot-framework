*** Settings ***
Library           AppiumLibrary

*** Variables ***
${HELLO_MESSAGE}  Hello, Robot Framework World!

*** Test Cases ***
Simple Hello World Test
    [Documentation]        This test simply logs a hello world message
    Log    ${HELLO_MESSAGE}     console=yes
    Log    This is a simple test to verify Robot Framework is working properly
    Should Be Equal    ${HELLO_MESSAGE}     Hello, Robot Framework World!

*** Keywords ***
Print Hello World
    Log    ${HELLO_MESSAGE}    console=yes
