*** Settings ***
Library                BuiltIn
Resource               ../Helpers/TestSetupHelper.robot

*** Variables ***
${BROWSERSTACK_USERNAME}              jaykishoreduvvur_pnsG3S
${BROWSERSTACK_ACCESS_KEY}            ccqeMmANQ2ikmYsxkTjN
${BROWSERSTACK_APP_ID}                bs://8ec18a0a1f134e7edaebfb7755de17bb082471bd
${PLATFORM_NAME}                      Android
${OS_VERSION}                         12.0
${DEVICE}                             Samsung Galaxy S22
${TIMEOUT}                            20


*** Keywords ***

BeforeTest
    Launch App  ${BROWSERSTACK_USERNAME}   ${BROWSERSTACK_ACCESS_KEY}   ${BROWSERSTACK_APP_ID}
    ...         ${PLATFORM_NAME}   ${OS_VERSION}   ${DEVICE}  ${TIMEOUT}

AfterTest
    Close App