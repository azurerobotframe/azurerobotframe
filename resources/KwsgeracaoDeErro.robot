documentation   KWS destinado a união de todas as keywords (KWS) referente a testes.


*** keywords ***
Quando selecionar o subitem
    Wait Until Element Is Visible           (//span[@class='po-button-label ng-star-inserted'][contains(.,'Exemplos')])[13]    5
    Click Element                           (//span[@class='po-button-label ng-star-inserted'][contains(.,'Exemplos')])[13]

Então os dados estarão disponiveis
    #PoComboBasic
    Wait Until Element Is Visible           (//input[contains(@autocomplete,'off')])[1]           5
    Click Element                           (//input[contains(@autocomplete,'off')])[1]
    Click Element                           (span[contains(.,'Option 2')])[3]