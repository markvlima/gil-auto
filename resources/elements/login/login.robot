*** Settings ***
Documentation    realização do login no sistema, com opção de escolha da empresa a ser logada
Library    SikuliLibrary   
  

*** Keywords ***
Realizar Login
    [Documentation]    Recebe um numero que corresponde a posição da empresa e do usuario no dropdown, para realizar o login
    [Arguments]    ${EMPRESA}    ${USUARIO}    ${SENHA}  
    Add Image Path    ./resources\\elements\\login
    Open Application    C:\\GIL\\pgm\\GILv2.exe
    Wait For Image    btn-entrar.png    timeout=60   notWantedImage=nao-deve-aparecer.png
    IF    ${USUARIO} != 1
        FOR    ${VEZES}    IN RANGE    0    4
            Press Special Key    TAB
            Sleep   1s
        END
        FOR    ${ACAO}    IN RANGE    1    ${USUARIO}
            Press Special Key    C_DOWN
        END      
        Press Special Key    ENTER
    END

    IF    ${EMPRESA} != 1
        FOR    ${VEZES}    IN RANGE    0    5
            Press Special Key    TAB
            Sleep   1s
        END
        FOR    ${ACAO}    IN RANGE    1    ${EMPRESA}
            Press Special Key    C_DOWN
        END
        Press Special Key    ENTER
    END

    IF    ${SENHA} !=1
        Double Click    edt-senha.png
        Press Special Key    DELETE  
        Input Text    edt-senha.png    ${SENHA}
    END
    
    Press Special Key    ENTER
    
    

Validar Layout Login
    [Documentation]    Verifica se ouve alteração do layout da tela
    Add Image Path    ./resources\\elements\\login
    Open Application    C:\\GIL\\pgm\\GILv2.exe
    Sleep    10s
    Log To Console    aguardando para validar
    Wait For Image    layout-esperado.png    timeout=10   notWantedImage=nao-deve-aparecer.png
    Log To Console    layout validado
    