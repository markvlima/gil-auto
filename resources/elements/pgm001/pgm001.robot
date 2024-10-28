*** Settings ***
Documentation    Manipulação do PGM 001 para acessar diversos programas
Library    SikuliLibrary


*** Variables ***

*** Keywords ***
Acessar o Pgm
    [Arguments]    ${PGM}
    [Documentation]    Recebe um número que corresponde ao PGM a ser acessado
    Add Image Path    ./resources\\elements\\pgm001
    Wait For Image    edt-pesquisa.png    timeout=10   notWantedImage=nao-deve-aparecer.png
    Input Text    edt-pesquisa.png    ${PGM}
    Press Special Key    ENTER


    