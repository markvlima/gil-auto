*** Settings ***
Documentation    Suite destinada a procedimentos no PGM 040
Library    SikuliLibrary

***Variables***

*** Keywords ***
Cadastrar Cliente
    [Documentation]    Realiza novo cadastro pesquisando cnpj
    Add Image Path    ./resources\\elements\\pgm040
    Confirmar Tela Inicial pgm040
    Click    btn-novo-cadastro.png
    Wait For Image    check-pessoa-juridica.png    timeout=10    notWantedImage=nao-deve-aparecer.png    
    Click    check-pessoa-juridica.png
    Input Text    edt-cnpj-cpf.png    18579236000190
    click    btn-consultar-cnpj.png
    Wait For Image    btn-preencher-faturamento.png    timeout=20    notWantedImage= nao-deve-aparecer.png
    Click    btn-preencher-faturamento.png
    Sleep    2s
    Click    btn-preencher-cobranca.png
    Sleep    2s 
    Click    btn-salvar.png

Excluir Cadastro
    [Documentation]    Realiza a exclusão de um cadastro
    Add Image Path    ./resources\\elements\\pgm040
    Confirmar Tela Inicial pgm040
    #O campo de pesquisa deve estar em foco (amarela)
    Input Text   edt-pesquisa-tela-inicial.png    virtux
    Press Special Key    ENTER    
    Sleep    2s
    #Pula para a primeira linha do Grid e confirma com "ENTER" para acessar o cadastro
    Press Special Key    C_DOWN  
    Sleep    2s
    Press Special Key    ENTER 
    Wait For Image    btn-excluir.png    notWantedImage=nao-pode-aparecer.png    timeout=10
    Click    btn-excluir.png
    #move o cursor para a opção "sim" e confirma 
    Sleep    2s
    Type With Modifiers    s    SHIFT



Confirmar Tela Inicial pgm040 
    [Documentation]    Valida se o botão "novo" da pagina inical do PGM 040 está disponível
    Wait For Image    btn-novo-cadastro.png   timeout=10    notWantedImage=nao-deve-aparecer.png