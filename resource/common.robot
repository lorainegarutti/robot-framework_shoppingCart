*** Settings ***
Library          AppiumLibrary

*** Variables ***
${REMOTE_URL}               http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}            Android
${DEVICE_NAME}              AppiumPixel
${AVD_ARGS}                 -dns-server 8.8.8.8
${AVD}                      AppiumPixel
${APP_PACKAGE}              com.novapontocom.casasbahia
${APP_ACTIVITY}             br.com.viavarejo.feature.home.HomeActivity
${AUTOMATION_NAME}          appium
${AUTO_GRANT_PERMISSIONS}   true

*** Keywords ***
Should start the test case
    Open Application  ${REMOTE_URL}  platformName=${PLATFORM_NAME}  avdArgs=${AVD_ARGS}  avd=${AVD}  autoGrantPermissions=${AUTO_GRANT_PERMISSIONS}	
    ...               deviceName=${DEVICE_NAME}  appPackage=${APP_PACKAGE}  appActivity=${APP_ACTIVITY}  automationName=${AUTOMATION_NAME}
    Start Screen Recording    

Should finish the test case
    Stop Screen Recording
    Capture Page Screenshot
    Close Application
                  