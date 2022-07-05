
*** Settings ***
Documentation                          Screen Objects for Login Password Screen


*** Variables ***
${WELCOME_BACK_TITLE}                  xpath=//android.widget.TextView[@text='Welcome back!']
${INTRO_EMAIL}                         xpath=//android.widget.TextView[@resource-id='IntroEmail']
${PASSWORD_LABEL}                      xpath=//android.widget.TextView[@text='Password']
${PASSWORD_INPUT_FIELD}                xpath=//android.widget.EditText[@resource-id='Password>Input']
${FORGOT_YOUR_PASSWORD_LABEL}          xpath=//android.widget.TextView[@text='Forgot your password?']
${CONTINUE_BUTTON}                     xpath=//android.widget.TextView[@text='Continue']
${CANCEL_BUTTON}                       xpath=//android.widget.TextView[@text='Cancel']