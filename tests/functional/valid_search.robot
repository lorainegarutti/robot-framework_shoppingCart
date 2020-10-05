*** Settings ***
Documentation  Funcionalidade de busca de produtos
Resource       ../../resource/common.robot
Resource       ../../resource/functional_keywords.robot

Test Setup     Deveria começar o teste
Test Teardown  Deveria finalizar o teste

*** Test Cases ***
Fazer pesquisa de um produto no app das Casas Bahia
    [Documentation]  Verificar funcionalidade de pesquisa de produto
    [Tags]  Smoke

    Deveria aceitar as permissões
    Deveria fazer busca por um produto  Cafeteira
    Deveria abrir o primeiro resultado da busca  Cafeteira
