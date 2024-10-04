*** Settings ***
Documentation        Suite de teste 

Resource        ../resources/base.robot

Suite Setup          Iniciar Sessão
Suite Teardown       Encerrar Sessão

*** Test Cases ***
Login
    Click    login\\btn-entrar.png
    Elemento Deve Estar Visível    input-pesquisa-menu.PNG

    Log    ${OPTIONS}
     

     [Teardown]    Finaliza Teste

*** Keywords ***
Elemento Deve Estar Visível
    [Arguments]    ${imagem}
    ${resultado}=    Exists    ${imagem}    10
    Run Keyword If    '${resultado}'=='None'    Fail    O elemento ${imagem} não está visível após o login
    Log    O elemento ${imagem} foi encontrado