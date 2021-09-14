documentation   KWS destinado a união de todas as keywords (KWS) referente a testes.


*** keywords ***
Dado que esteja na tela de componente do POUI combo
    Go to                       ${url}      #options=add_argument("--no-sandbox"); add_experimental_option('excludeSwitches',['enable-logging']); add_argument("--window-size=1920,1080"); add_argument("--start-maximized");add_argument("--disable-gpu"); add_argument("--disable-extensions");add_argument("--headless")    Title Should Be             PO UI
    #Open Browser     ${url}      ${browser}      options=add_argument("--no-sandbox"); add_experimental_option('excludeSwitches',['enable-logging']); add_argument("--window-size=1920,1080"); add_argument("--start-maximized");add_argument("--disable-gpu"); add_argument("--disable-extensions");add_argument("--headless")  
    Maximize Browser Window
    
Quando selecionar o subitem Combo
    Wait Until Element Is Visible           (//span[@class='po-button-label ng-star-inserted'][contains(.,'Exemplos')])[13]    5
    Click Element                           (//span[@class='po-button-label ng-star-inserted'][contains(.,'Exemplos')])[13]

Então os dados estarão disponiveis para preenchimento
    #PoComboBasic
    Wait Until Element Is Visible           (//input[contains(@autocomplete,'off')])[1]           5
    Click Element                           (//input[contains(@autocomplete,'off')])[1]
    Wait Until Element Is Visible           (//span[contains(.,'Option 2')])[3]            5
    Click Element                           (//span[contains(.,'Option 2')])[3]

    #PoComboLabs
    Wait Until Element Is Visible           (//div[contains(@class,'po-switch-container po-clickable po-switch-container-off')])[1]       5
    Click Element                           (//div[contains(@class,'po-switch-container po-clickable po-switch-container-off')])[1]
    Input Text                              //input[contains(@name,'optionsGroup')]       Automation Test
    Input Text                              //input[contains(@name,'optionLabel')]        Cadastro de um label para teste de regressao
    Input Text                              //input[contains(@name,'optionValue')]        999
    Wait Until Element Is Visible           //button[@type='button'][contains(.,'Add Option')]        5
    Click Element                           //button[@type='button'][contains(.,'Add Option')]
    Click Element                           //label[@class='po-checkbox-group-label po-clickable'][contains(.,'Optional')]
    Click Element                           //label[@class='po-checkbox-group-label po-clickable'][contains(.,'Required')]
    Click Element                           //label[@class='po-radio-group-label po-clickable'][contains(.,'Ends With')]
    Input Text                              //input[contains(@name,'filterService')]      https://po-sample-api.herokuapp.com/v1/heroes

    #POComboScheduling
    Wait Until Element Is Visible           //input[contains(@name,'name')]       5
    Input Text                              //input[contains(@name,'name')]       Renato Kawakubo
    Input Text                              //input[contains(@class,'po-input po-input-icon-left po-input-icon-right')]       renato123456@totvs.com.br
    Wait Until Element Is Visible           (//span[contains(@class,'po-icon po-field-icon po-icon-calendar')])[1]        5
    Click Element                           (//span[contains(@class,'po-icon po-field-icon po-icon-calendar')])[1]
    Click Element                           (//span[contains(.,'13')])[1]
    Input Text                              //input[contains(@placeholder,'(99) 99999-9999')]     11123456789
    Wait Until Element Is Visible           //input[contains(@placeholder,'Select a location')]     5
    Click Element                           //input[contains(@placeholder,'Select a location')]
    Click Element                           //div[@class='po-sm-10 po-md-9 po-lg-11'][contains(.,'São Paulo')]
    Click Element                           (//div[contains(@class,'po-select-button')])[2]
    Click Element                           //div[@class='po-select-item'][contains(.,'Particular')]
    Click Element                           //input[contains(@name,'medicalSpecialty')]
    Click Element                           (//span[contains(.,'Pediatrist')])[2]
    #Wait Until Element Is Visible           xpath=//span[@class='po-button-label'][contains(.,'Schedule')]      5
    #Click Element                           xpath=//span[@class='po-button-label'][contains(.,'Schedule')]

    #POComboHeroes
    Wait Until Element Is Visible           (//input[contains(@autocomplete,'off')])[6]
    Click Element                           (//input[contains(@autocomplete,'off')])[6]
    Wait Until Element Is Visible           //span[contains(.,'Viuva Negra')]           5
    Click Element                           //span[contains(.,'Viuva Negra')]  