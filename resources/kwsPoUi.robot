documentation   KWS destinado a união de todas as keywords (KWS) referente a testes.

*** Settings ***
Library         SeleniumLibrary

Resource        KwsValidacaoComponentesCombo.robot
Resource        KwsValidacaoComponentesButton.robot
Resource        KwsValidacaoComponentesAccordion.robot
Resource        kwsOpenSession.robot
Resource        KwsgeracaoDeErro.robot

*** Variable ***
${url}          https://po-ui.io/documentation
${browser}      Chrome                 #options=add_argument("--no-sandbox"); add_experimental_option('excludeSwitches',['enable-logging']); add_argument("--window-size=1920,1080"); add_argument("--start-maximized");add_argument("--disable-gpu"); add_argument("--disable-extensions");add_argument("--headless")  

#Open Browser     ${url}      ${browser}      #options=add_argument("--no-sandbox"); add_experimental_option('excludeSwitches',['enable-logging']); add_argument("--window-size=1920,1080"); add_argument("--start-maximized");add_argument("--disable-gpu"); add_argument("--disable-extensions");add_argument("--headless")  