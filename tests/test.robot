*** Settings ***
Documentation        Suite de teste 

Resource        ../resources/base.robot

Suite Setup          Iniciar Sessão
Suite Teardown       Encerrar Sessão

*** Test Cases ***
Login

    Log    ${OPTIONS}
     

     [Teardown]    Finaliza Teste