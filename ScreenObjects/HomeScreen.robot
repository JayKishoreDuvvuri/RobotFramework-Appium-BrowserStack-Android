
*** Settings ***
Documentation                          Screen Objects for Home Screen


*** Variables ***
${NEVER_BUTTON}                       xpath=//android.widget.Button[@resource-id='android:id/autofill_save_no']
${HOME_SCREEN}                        xpath=//android.widget.ScrollView[@content-desc="_"]
${HOME_SCREEN_TITLE}                  xpath=//android.widget.ScrollView[@content-desc="_"]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup
${SPOTLIGHT_TITLE}                    xpath=//android.widget.TextView[@resource-id='Spotlight_Title']
${SPOTLIGHT_IMAGE}                    xpath=//android.widget.ImageView[@resource-id='Spotlight_CacheableImage']
${PROFILE_ICON}                       xpath=//android.view.ViewGroup[@content-desc="BottomTab"]//android.view.ViewGroup//android.view.View//android.view.View[4]
${SETTINS_ICON}                       xpath=(//android.widget.TextView[@resource-id='Typography'])[12]