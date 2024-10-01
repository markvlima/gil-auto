*** Settings ***
Documentation    Everythings starts here

Library        SikuliLibrary

*** Keywords ***
Carrega os elementos do App
    Add Image Path        ${EXECDIR}\\resources\\elements

Iniciar Sessão
    Carrega os elementos do App
    Wait For Image      button-ok.png    not-button-ok.png    500
    Click               button-ok.png
    Click               icon-gil.png

Efetuar login
    Click               button-entrar.PNG

Encerrar Sessão
    Stop Remote Server

Finaliza Teste
    Capture Screen
#    Close Application    GILv2