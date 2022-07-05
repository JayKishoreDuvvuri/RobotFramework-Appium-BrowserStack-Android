*** Settings ***
Library                BuiltIn
Resource               ../Helpers/TestSetupHelper.robot

*** Variables ***
${APPIUM_PORT}         4723
${PLATFORM_NAME}       Android
${PLATFORM_VERSION}    11
${APP}                 ${EXECDIR}/Apk/TED.apk
${APP_PACKAGE}         com.ted.android
${APP_ACTIVITY}        com.ted.android.MainActivity
${TIMEOUT}             20


*** Keywords ***

BeforeTest
    Launch App   ${APPIUM_PORT}    ${PLATFORM_NAME}    ${PLATFORM_VERSION}
    ...          ${APP}   ${APP_PACKAGE}    ${APP_ACTIVITY}   ${TIMEOUT}

AfterTest
    Close App