*** Settings ***
Documentation         Login Password Screen Functionality
Library               AppiumLibrary
Resource              ../ScreenObjects/LoginPasswordScreen.robot


*** Keywords ***
LoginPasswordScreen.CheckElementsVisible
    Wait Until Page Contains Element              ${WELCOME_BACK_TITLE}
    Wait Until Element Is Visible                 ${WELCOME_BACK_TITLE}
    Wait Until Element Is Visible                 ${INTRO_EMAIL}
    Wait Until Element Is Visible                 ${PASSWORD_LABEL}
    Wait Until Element Is Visible                 ${FORGOT_YOUR_PASSWORD_LABEL}

LoginPasswordScreen.CheckElementsEnabled
    Element Should Be Enabled                     ${PASSWORD_INPUT_FIELD}
    Element Should Be Enabled                     ${CANCEL_BUTTON}

LoginPasswordScreen.TypeInEmail
    [Arguments]                                    ${PASSWORD_CREDENTIAL}
    Input Text                                     ${PASSWORD_INPUT_FIELD}      ${PASSWORD_CREDENTIAL}

LoginPasswordScreen.WaitAndClickContinueButton
    Wait Until Page Contains Element              ${CONTINUE_BUTTON}
    Element Should Be Enabled                     ${CONTINUE_BUTTON}
    Click Element                                 ${CONTINUE_BUTTON}

