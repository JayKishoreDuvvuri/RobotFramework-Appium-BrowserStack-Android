*** Settings ***
Documentation         Landing Screen Functionality
Library               AppiumLibrary
Resource              ../ScreenObjects/LandingScreen.robot


*** Keywords ***
LandingScreen.TitleAndMessageVisible
    Wait Until Page Contains Element          ${WELCOME_TITLE}
    Wait Until Element Is Visible             ${WELCOME_TITLE}
    Wait Until Element Is Visible             ${WELCOME_MESSAGE}

LandingScreen.WaitAndClickLetsGoButton
    Wait Until Element Is Visible             ${LETS_GO_BUTTON}
    Click Element                             ${LETS_GO_BUTTON}

LandingScreen.WhatInterestsYou?Screen
    Wait Until Element Is Visible            ${WHAT_INTERESTS_YOU?_TITLE}
    Wait Until Element Is Visible            ${TECHNOLOGY_GROUP}
    Click Element                            ${TECHNOLOGY_GROUP}
    Wait Until Element Is Visible            ${HEALTH_GROUP}
    Click Element                            ${HEALTH_GROUP}
    Element Should Be Enabled                ${NEXT_BUTTON}
    Click Element                            ${NEXT_BUTTON}

LandingScreen.WhatAreYouLookingFor?Screen
    Wait Until Element Is Visible            ${WHAT_ARE_YOU_LOOKING_FOR?_TITLE}
    Wait Until Element Is Visible            ${PROFESSIONAL_GROWTH}
    Click Element                            ${PROFESSIONAL_GROWTH}
    Wait Until Page Contains Element         ${NEXT_BUTTON_SECOND}
    Element Should Be Enabled                ${NEXT_BUTTON_SECOND}
    Click Element                            ${NEXT_BUTTON_SECOND}