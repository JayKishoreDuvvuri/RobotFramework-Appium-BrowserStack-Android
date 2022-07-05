*** Settings ***
Documentation         Home Screen Functionality
Library               AppiumLibrary
Resource              ../ScreenObjects/HomeScreen.robot


*** Keywords ***
HomeScreen.ClickOnNeverButton
    Wait Until Element Is Visible             ${NEVER_BUTTON}
    Click Element                             ${NEVER_BUTTON}

HomeScreen.ElementsVisible
    Wait Until Page Contains Element          ${HOME_SCREEN}
    Wait Until Element Is Visible             ${HOME_SCREEN}
    Wait Until Element Is Visible             ${HOME_SCREEN_TITLE}
    Wait Until Page Contains Element          ${SPOTLIGHT_TITLE}
    Wait Until Element Is Visible             ${SPOTLIGHT_IMAGE}