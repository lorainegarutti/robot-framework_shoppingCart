*** Settings ***
Library  AppiumLibrary

*** Keywords ***
Deveria fazer busca por um produto
    [Arguments]  ${SEARCH}  
    Wait Until Element Is Visible  com.novapontocom.casasbahia:id/imageViewItemBanner
    Click Element  com.novapontocom.casasbahia:id/image_search
    Wait Until Page Contains Element  com.novapontocom.casasbahia:id/editTextSearchProducts
    Input Text  com.novapontocom.casasbahia:id/editTextSearchProducts   ${SEARCH} 
    Wait Until Page Contains  ${SEARCH}

Deveria abrir o primeiro resultado da busca
    [Arguments]  ${SEARCH} 
    Click Element At Coordinates  206  303
    Wait Until Page Contains Element  com.novapontocom.casasbahia:id/productListingView
    Element Should Contain Text  com.novapontocom.casasbahia:id/textViewProductName  ${SEARCH} 

