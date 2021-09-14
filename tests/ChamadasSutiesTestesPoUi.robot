Documentation   Automação destinado a chamada de todas as KWS.
# Para adicionar comentários de linha, execute editor.action.addCommentLine( CTRL+ K CTRL+ C)

# Para remover comentários de linha, execute editor.action.removeCommentLine( CTRL+ K CTRL+ U)

*** Settings ***
Resource            ../resources/kwsPoUi.robot

Suite Setup          Open Session
Suite Teardown       Close Session

*** Test Cases ***
Validação Componentes Accordion
    Dado que esteja na tela de componente do POUI combo
    Quando realizar o preenchimento do item accordion
    Então os dados serão armazenados

Validação Componentes do Button  
    Dado que esteja na tela de componente do POUI combo
    Quando acesso a tela button
    Então interajo com os popup na tela

Validação Componentes Combo
    Dado que esteja na tela de componente do POUI combo
    Quando selecionar o subitem Combo
    Então os dados estarão disponiveis para preenchimento

Geracao de erro no robotframework
    Dado que esteja na tela de componente do POUI combo
    Quando selecionar o subitem
    Então os dados estarão disponiveis