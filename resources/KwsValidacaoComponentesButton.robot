Documentation   Automação destinado a validação dos componentes do POUI da usabilidade dos botões.
# Para adicionar comentários de linha, execute editor.action.addCommentLine( CTRL+ K CTRL+ C)

# Para remover comentários de linha, execute editor.action.removeCommentLine( CTRL+ K CTRL+ U)

*** Keywords ***
Quando acesso a tela button
    Wait Until Element Is Visible       (//span[@class='po-button-label ng-star-inserted'][contains(.,'Exemplos')])[5]        5
    Click Element                       (//span[@class='po-button-label ng-star-inserted'][contains(.,'Exemplos')])[5] 
    
Então interajo com os popup na tela
    #Button
    Wait Until Element Is Visible       //span[@class='po-button-label ng-star-inserted'][contains(.,'PO Button')]      5
    Click Element                       //span[@class='po-button-label ng-star-inserted'][contains(.,'PO Button')]                      
    Alert Should be Present             Po Button!
    #PO Button labs
    Wait Until Element Is Visible       (//button[contains(@type,'button')])[4]       5
    Click Button                        (//button[contains(@type,'button')])[4]
    Capture Page Screenshot             POButtonlabs.png
    Wait Until Element Is Visible       //span[@class='po-button-label ng-star-inserted'][contains(.,'Ok')]       5
    Click Element                       //span[@class='po-button-label ng-star-inserted'][contains(.,'Ok')]
    #Alert Should be Present             Hello PO World!!!
    #Handle Alert    Accept alert
    #Properties
    Wait Until Element Is Visible       //label[@class='po-checkbox-group-label po-clickable'][contains(.,'Disabled')]        5
    Click Element                       //label[@class='po-checkbox-group-label po-clickable'][contains(.,'Disabled')]
    Click Element                       //label[@class='po-checkbox-group-label po-clickable'][contains(.,'Loading')]
    Capture Page Screenshot             Properties.png 
    #icons
    Click Element                       //label[@class='po-radio-group-label po-clickable'][contains(.,'fa fa-podcast')]
    Capture Page Screenshot             icons.png
    #type
    Wait Until Element Is Visible       //label[@class='po-radio-group-label po-clickable'][contains(.,'danger')]    5
    Click Element                       //label[@class='po-radio-group-label po-clickable'][contains(.,'danger')]      
    Capture Page Screenshot             type.png
    #PO Button Social Networ
    Wait Until Element Is Visible       //button[@type='button'][contains(.,'Confirm')]               5
    Click Element                       //button[@type='button'][contains(.,'Confirm')]
    Click Element                       //span[contains(@class,'po-icon po-icon-ok')]
    Wait Until Element Is Visible       //button[@type='button'][contains(.,'Ignore')]            5
    Click Element                       //button[@type='button'][contains(.,'Ignore')]
    Click Element                       //span[contains(@class,'po-icon po-icon-warning')]
    Capture Page Screenshot             POButtonSocialNetworeIgnore.png
    Wait Until Element Is Visible       //i[contains(@class,'fa fa-ban po-fonts-icon')]               5
    Click Element                       //i[contains(@class,'fa fa-ban po-fonts-icon')]
    Click Element                       //span[contains(@class,'po-icon po-icon-info')]
    Capture Page Screenshot             POButtonSocialNetworeBlock.png