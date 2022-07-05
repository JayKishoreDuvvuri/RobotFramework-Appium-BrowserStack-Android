
*** Settings ***
Documentation                          Screen Objects for Landing Screen


*** Variables ***
${WELCOME_TITLE}                       xpath=//android.view.ViewGroup[@content-desc="Welcome to TED"]
${WELCOME_MESSAGE}                     xpath=//android.view.ViewGroup[@content-desc="_"]/android.widget.TextView
${LETS_GO_BUTTON}                      xpath=//android.widget.Button[@content-desc="Let's go!, Tap to get started, answering two quick questions and improving our services"]
${WHAT_INTERESTS_YOU?_TITLE}           xpath=//android.widget.TextView[@content-desc="What interests you?"]
${TECHNOLOGY_GROUP}                    xpath=//android.widget.TextView[@text='Technology']
${HEALTH_GROUP}                        xpath=//android.widget.TextView[@text='Health']
${NEXT_BUTTON}                         xpath=//android.view.ViewGroup[@content-desc="_"]/android.view.ViewGroup[3]/android.widget.Button
${WHAT_ARE_YOU_LOOKING_FOR?_TITLE}     xpath=//android.widget.TextView[@content-desc="What are you looking for?"]
${PROFESSIONAL_GROWTH}                 xpath=//android.widget.TextView[@text='Professional growth']
${NEXT_BUTTON_SECOND}                  xpath=//android.view.ViewGroup[@content-desc="_"]/android.view.ViewGroup[3]/android.widget.Button
