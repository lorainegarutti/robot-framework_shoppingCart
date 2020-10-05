*** Settings ***
#Documentation  Valid search for products at a shopping app
Resource       ../../resource/common.robot
Resource       ../../resource/functional_keywords.robot

Test Setup     Should start the test case
Test Teardown  Should finish the test case

*** Variables ***
${PRODUCT_ITEMS}  Cafeteira

*** Test Cases ***
Valid search for products at Casas Bahia app
    [Tags]  Smoke-test

    Should accept permissions
    Should search for a product  ${PRODUCT_ITEMS}
    Should open the first result  ${PRODUCT_ITEMS}
