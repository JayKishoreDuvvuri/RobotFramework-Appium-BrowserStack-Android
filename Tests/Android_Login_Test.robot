# Scenario : User Logs in and verifies the home screen elements visible
# Scenario Description: User logs in to the app verifies the home screen elements visible
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

*** Settings ***
Documentation           User Logs in and Verifies the Home Screen
Library                 AppiumLibrary
Resource                ../Resources/TestSetup.robot
Resource                ../Data/TestData.robot
Resource                ../Screens/LandingScreen.robot
Resource                ../Screens/LoginEmailScreen.robot
Resource                ../Screens/LoginPasswordScreen.robot
Resource                ../Screens/HomeScreen.robot


Test Setup              BeforeTest
Test Teardown           AfterTest


*** Test Cases ***
User Logs in and Verifies the Home screen Elements
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