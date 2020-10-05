*** Settings ***
Library          AppiumLibrary

*** Variables ***
${REMOTE_URL}       http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}    Android
${DEVICE_NAME}      emulator-5554
${AVD}              AppiumPixel2Pie
${APP_PACKAGE}      com.novapontocom.casasbahia
${APP_ACTIVITY}     br.com.viavarejo.feature.home.HomeActivity
${AUTOMATION_NAME}  appium

*** Keywords ***
Deveria começar o teste
    Open Application  ${REMOTE_URL}  platformName=${PLATFORM_NAME}  avd=${AVD}
    ...               deviceName=${DEVICE_NAME}  appPackage=${APP_PACKAGE}  appActivity=${APP_ACTIVITY}  automationName=${AUTOMATION_NAME}
    Start Screen Recording    

Deveria aceitar as permissões
    Click Element  id=com.android.packageinstaller:id/permission_allow_button
    Click Element  id=com.android.packageinstaller:id/permission_allow_button

Deveria finalizar o teste
    Stop Screen Recording
    Capture Page Screenshot
    Close Application
                  