*** Settings ***
Library                 AppiumLibrary
Library                 BuiltIn
Library                 Process

*** Keywords ***
Launch App
    [Arguments]  ${APPIUM_PORT}    ${PLATFORM_NAME}   ${PLATFORM_VERSION}  ${APP}   ${APP_PACKAGE}    ${APP_ACTIVITY}   ${TIMEOUT}
    Set Appium Timeout    ${TIMEOUT}
    Open Application  http://127.0.0.1:${APPIUM_PORT}/wd/hub
  ...    platformName=${PLATFORM_NAME}     platformVersion=${PLATFORM_VERSION}
  ...    app=${APP}    appPackage= ${APP_PACKAGE}    appActivity=${APP_ACTIVITY}


Close App
    Close Application