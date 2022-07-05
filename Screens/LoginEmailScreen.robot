*** Settings ***
Documentation         Login Email Screen Functionality
Library               AppiumLibrary
Resource              ../ScreenObjects/LoginEmailScreen.robot


*** Keywords ***
LoginEmailScreen.CheckElementsVisible
    Wait Until Page Contains Element          ${SIGNIN_TITLE}
    Wait Until Element Is Visible             ${SIGNIN_TITLE}
    Wait Until Element Is Visible             ${SIGNIN_INTRO_MESSAGE}
    Wait Until Element Is Visible             ${CONTINUE_WITH_GOOGLE}
    Wait Until Element Is Visible             ${CONTINUE_WITH_FACEBOOK}
    Wait Until Element Is Visible             ${OR_USE_YOUR_EMAIL_LABEL}
    Wait Until Element Is Visible             ${EMAIL_LABEL}
    Wait Until Element Is Visible             ${SKIP_FOR_NOW_LABEL}

LoginEmailScreen.TypeInEmail
    [Arguments]                               ${EMAIL_CREDENTIAL}
    Element Should Be Enabled                 ${EMAIL_INPUT_FIELD}
    Input Text                                ${EMAIL_INPUT_FIELD}       ${EMAIL_CREDENTIAL}

LoginEmailScreen.WaitAndClickContinueButton
    Wait Until Page Contains Element          ${CONTINUE_BUTTON}
    Element Should Be Enabled                 ${CONTINUE_BUTTON}
    Click Element                             ${CONTINUE_BUTTON}