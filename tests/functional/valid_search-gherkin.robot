*** Settings ***
#Documentation  Valid search for products at a shopping app
Resource       ../../resource/common.robot
Resource       ../../resource/functional_keywords.robot

Test Setup     Should start the test case
Test Teardown  Should finish the test case

*** Variables ***
${PRODUCT_ITEMS}  Cafeteira

*** Test Cases ***
Search for products at Casas Bahia app
    [Tags]  Smoke-test

    Given I am at the app homepage
    When I search for a product  ${PRODUCT_ITEMS}
    Then I should visualize the results  ${PRODUCT_ITEMS}
