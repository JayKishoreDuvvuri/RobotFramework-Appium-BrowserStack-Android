
*** Settings ***
Documentation                          Screen Objects for Profile Screen

*** Variables ***
${PROFILE_ICON}                        xpath=//android.view.ViewGroup[@content-desc="BottomTab"]//android.view.ViewGroup//android.view.View//android.view.View[4]
${TEST_ACCOUNT}                        xpath=//android.widget.TextView[@text='Test Account']
${SETTINGS_ICON}                       xpath=(//android.widget.TextView[@resource-id='Typography'])[12]
${SETTINGS_LABEL}                      xpath=(//android.widget.TextView[@resource-id='Typography'])[1]
${LANGUAGES_LABEL}                     xpath=//android.widget.TextView[@text='Languages']
${SIGN_OUT_BUTTON}                     xpath=//android.widget.TextView[@text='Sign out']
${SIGN_OUT_ON_POPUP}                   xpath=//android.widget.TextView[@text='SIGN OUT']