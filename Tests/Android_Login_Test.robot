# Scenario : User Logs in and Logs out from the App
# Scenario Description: User logs in to the app verifies the home screen and logs out from the app
# Test Steps:
            #1.  User navigates to Landing Screen with welcome message "Welcome to TED" and clicks on Let's go button
            #2.  User Taps on Technology and Health groups on "What interests you?" screen and clicks on Next button
            #3.  User Taps on Professional growth option on "What are you looking for?" screen and clicks on Next button
            #4.  User Lands on the Signin screen Verifies th elements on the sign in screen
            #5.  User enters email address on the Sign Email screen and clicks on Continue button
            #6.  User naviagtes to the "Welcome back!" password screen
            #7.  User verifies the elements on the Password screen and enters Password credentials
            #8.  User clicks on Continue button and navigates to the TED Home screen
            #9.  User verifies the elements Home screen, Home screen Title, Spotlight title and spotlight image on the TED Home screen
            #10. User clicks on the Pfofile button at the right bottom the screen to navigate to Profile screen
            #11. User verifies the Profile screen label Test Account and taps on "settings" option
            #12. User navigates to the "Settings" section and verifies settings label
            #13. User scrolls from Settings label to Languages label
            #14. User verifies the sign out button is enabled and clicks on it
            #15. User clicks on the sign Out button again on "Sign Out pop up window" to confirm sign out
            #16. User navigates to the Landing screen and verifies the Landing screen title.

*** Settings ***
Documentation           User Logs in and Logs out from the App
Library                 AppiumLibrary
Resource                ../Resources/TestSetup.robot
Resource                ../Data/TestData.robot
Resource                ../Screens/LandingScreen.robot
Resource                ../Screens/LoginEmailScreen.robot
Resource                ../Screens/LoginPasswordScreen.robot
Resource                ../Screens/HomeScreen.robot
Resource                ../Screens/ProfileScreen.robot


Test Setup              BeforeTest
Test Teardown           AfterTest


*** Test Cases ***
User Logs in and Logs out from the App
     LandingScreen.TitleAndMessageVisible
     LandingScreen.WaitAndClickLetsGoButton
     LandingScreen.WhatInterestsYou?Screen
     LandingScreen.WhatAreYouLookingFor?Screen
     LoginEmailScreen.CheckElementsVisible
     LoginEmailScreen.TypeInEmail                                         ${EMAIL_CREDENTIAL}
     LoginEmailScreen.WaitAndClickContinueButton
     LoginPasswordScreen.CheckElementsVisible
     LoginPasswordScreen.CheckElementsEnabled
     LoginPasswordScreen.TypeInEmail                                      ${PASSWORD_CREDENTIAL}
     LoginPasswordScreen.WaitAndClickContinueButton
     HomeScreen.ElementsVisible
     ProfileScreen.WaitAndClickProfileButton
     ProfileScreen.CheckElementsVisible
     ProfileScreen.WaitAndTapSettingsIcon
     ProfileScreen.ScrollToElement
     ProfileScreen.WaitAndClickSignOutButton
     LandingScreen.TitleAndMessageVisible

