
*** Settings ***
Documentation                          Screen Objects for Login Email Screen


*** Variables ***
${SIGNIN_TITLE}                        xpath=//android.widget.TextView[@text='Sign in to TED']
${SIGNIN_INTRO_MESSAGE}                xpath=//android.widget.TextView[@text='Get a personalized TED experience across all your devices, from Web to apps to TV']
${CONTINUE_WITH_GOOGLE}                xpath=//android.widget.TextView[@text='Continue with Google']
${CONTINUE_WITH_FACEBOOK}              xpath=//android.widget.TextView[@text='Continue with Facebook']
${OR_USE_YOUR_EMAIL_LABEL}             xpath=//android.widget.TextView[@text='Or use your email']
${EMAIL_LABEL}                         xpath=//android.widget.TextView[@text='Email address']
${EMAIL_INPUT_FIELD}                   xpath=//android.widget.EditText[@resource-id='EmailInput>Input']
${CONTINUE_BUTTON}                     xpath=//android.widget.TextView[@text='Continue']
${SKIP_FOR_NOW_LABEL}                  xpath=//android.widget.TextView[@text='Skip this for now']
