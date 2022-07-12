*** Settings ***
Library                 AppiumLibrary
Library                 BuiltIn
Library                 Process

*** Keywords ***
Launch App
    [Arguments]  ${BROWSERSTACK_USERNAME}   ${BROWSERSTACK_ACCESS_KEY}   ${BROWSERSTACK_APP_ID}  ${PLATFORM_NAME}   ${OS_VERSION}  ${DEVICE}  ${TIMEOUT}
    Set Appium Timeout    ${TIMEOUT}
    Open Application  http://${BROWSERSTACK_USERNAME}:${BROWSERSTACK_ACCESS_KEY}@hub-cloud.browserstack.com/wd/hub     app=${BROWSERSTACK_APP_ID}
    ...   name=TED_Android_LoginTest_SamsungGalaxyS22   build=RobotFramework_Appium_Android_SamsungGalaxyS22
    ...   platformName=${PLATFORM_NAME}   os_version=${OS_VERSION}   device=${DEVICE}

Close App
    Close Application
