Documentation   Automação destinado a validação dos componentes do POUI da usabilidade dos Accordion.
# Para adicionar comentários de linha, execute editor.action.addCommentLine( CTRL+ K CTRL+ C)

# Para remover comentários de linha, execute editor.action.removeCommentLine( CTRL+ K CTRL+ U)


*** variables ***
${descTesteesc}    Teste de input dos dados

*** Keywords ***
Quando realizar o preenchimento do item accordion
    Click Element                       //body/app-root[1]/div[1]/ng-component[1]/div[1]/ng-component[1]/po-page-list[1]/po-page[1]/div[1]/po-page-content[1]/div[1]/po-list-view[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/po-button[2]/button[1]/span[1]
    Wait Until Element Is Visible       //div[contains(text(),'PO Accordion 1')]      5
    Click Element                       //div[contains(text(),'PO Accordion 1')]
    Input Text                          //body/app-root[1]/div[1]/ng-component[1]/div[1]/ng-component[1]/po-page-default[1]/po-page[1]/div[1]/po-page-content[1]/div[1]/po-tabs[1]/div[2]/po-tab[2]/sample-po-accordion-labs-view[1]/div[2]/sample-po-accordion-labs[1]/po-dynamic-form[1]/form[1]/po-dynamic-form-fields[1]/div[1]/po-input[1]/po-field-container[1]/div[1]/div[2]/input[1]        ${descTesteesc} 
Então os dados serão armazenados   
    Click Element                       //body/app-root[1]/div[1]/ng-component[1]/div[1]/ng-component[1]/po-page-default[1]/po-page[1]/div[1]/po-page-content[1]/div[1]/po-tabs[1]/div[2]/po-tab[2]/sample-po-accordion-labs-view[1]/div[2]/sample-po-accordion-labs[1]/div[1]/po-button[1]/button[1]/span[1]
    Element Should Contain              //html[1]/body[1]/app-root[1]/div[1]/ng-component[1]/div[1]/ng-component[1]/po-page-default[1]/po-page[1]/div[1]/po-page-content[1]/div[1]/po-tabs[1]/div[2]/po-tab[2]/sample-po-accordion-labs-view[1]/div[2]/sample-po-accordion-labs[1]/po-accordion[1]/div[1]/section[1]/po-accordion-item-header[1]/header[1]/button[1]/div[1]       ${descTesteesc} 
    Capture Page Screenshot             Evidencia.png
    Wait Until Element is Visible       //html[1]/body[1]/app-root[1]/div[1]/ng-component[1]/div[1]/ng-component[1]/po-page-default[1]/po-page[1]/div[1]/po-page-content[1]/div[1]/po-tabs[1]/div[2]/po-tab[2]/sample-po-accordion-labs-view[1]/div[2]/sample-po-accordion-labs[1]/po-accordion[1]/div[1]/section[1]/po-accordion-item-header[1]/header[1]/button[1]/div[1]