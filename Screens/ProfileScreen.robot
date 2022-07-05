*** Settings ***
Documentation         Profile Screen Functionality
Library               AppiumLibrary
Library               BuiltIn
Resource              ../ScreenObjects/ProfileScreen.robot


*** Keywords ***
ProfileScreen.WaitAndClickProfileButton
    Element Should Be Enabled                 ${PROFILE_ICON}
    Click Element                             ${PROFILE_ICON}

ProfileScreen.CheckElementsVisible
    Wait Until Page Contains Element          ${TEST_ACCOUNT}
    Wait Until Element Is Visible             ${TEST_ACCOUNT}

ProfileScreen.WaitAndTapSettingsIcon
    Wait Until Element Is Visible             ${SETTINGS_ICON}
    Click Element                             ${SETTINGS_ICON}

ProfileScreen.ScrollToElement
     Wait Until Page Contains Element         ${SETTINGS_LABEL}
     Scroll                                   ${LANGUAGES_LABEL}    ${SETTINGS_LABEL}
     Wait Until Page Contains Element         ${SIGN_OUT_BUTTON}

ProfileScreen.WaitAndClickSignOutButton
    Element Should Be Enabled                 ${SIGN_OUT_BUTTON}
    Click Element                             ${SIGN_OUT_BUTTON}
    Wait Until Page Contains Element          ${SIGN_OUT_ON_POPUP}
    Element Should Be Enabled                 ${SIGN_OUT_ON_POPUP}
    Click Element                             ${SIGN_OUT_ON_POPUP}
