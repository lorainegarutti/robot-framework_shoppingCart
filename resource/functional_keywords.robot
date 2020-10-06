*** Settings ***
Library  AppiumLibrary
Resource       ./common.robot

*** Variables ***
${HOME_BANNER}  com.novapontocom.casasbahia:id/imageViewItemBanner
${SEARCH_BUTTON}  com.novapontocom.casasbahia:id/image_search
${SEARCH_INPUT}  com.novapontocom.casasbahia:id/editTextSearchProducts
${PRODUCTS_LIST}  com.novapontocom.casasbahia:id/productListingView
${PRODUCT_NAME}  com.novapontocom.casasbahia:id/textViewProductName

*** Keywords ***
#gherkin
Given I am at the app homepage
    Should accept permissions
    Wait Until Element Is Visible  ${HOME_BANNER}

When I search for a product
    [Arguments]  ${search_text}  
    Click Element  ${SEARCH_BUTTON}
    Wait Until Page Contains Element  ${SEARCH_INPUT}
    Input Text  ${SEARCH_INPUT}  ${search_text}
    Wait Until Page Contains  ${search_text}
    Click Element At Coordinates  206  303

Then I should visualize the results
    [Arguments]  ${search_text} 
    Wait Until Page Contains Element  ${PRODUCTS_LIST}
    Element Should Contain Text  ${PRODUCT_NAME}  ${search_text} 

#steps
Should search for a product
    [Arguments]  ${search_text}  
    Wait Until Element Is Visible  ${HOME_BANNER}
    Click Element  ${SEARCH_BUTTON}
    Wait Until Page Contains Element  ${SEARCH_INPUT}
    Input Text  ${SEARCH_INPUT}  ${search_text}
    Wait Until Page Contains  ${search_text}

Should open the first result
    [Arguments]  ${search_text} 
    Click Element At Coordinates  206  303
    Wait Until Page Contains Element  ${PRODUCTS_LIST}
    Element Should Contain Text  ${PRODUCT_NAME}  ${search_text} 

