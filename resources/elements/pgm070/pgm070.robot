*** Settings ***
Documentation    Suite com as keywords do pgm070
Library    SikuliLibrary
Library    OperatingSystem
Library    String

*** Keywords ***
Confirmar E Pausar
    [Documentation]    Vai confirmar o campo em foco com ENTER e aguarda 1 segundo 
    Press Special Key    ENTER
    Sleep    1s


Sair Edicao070
    [Documentation]    Vai sair da tela de edição de Itens
    Click    btn-salvar.png
    Click    btn-voltar.png


Criar Orcamento
    [Arguments]    ${CLIENTE}
    [Documentation]    cria um novo orçamento
    Add Image Path    ./resources\\elements\\pgm070
    Wait For Image    btn-novo-orcamento.png    timeout=10    notWantedImage=nao-deve-aparecer.png    
    Click    btn-novo-orcamento.png
    wait For Image    edt-pesquisa-cliente070.png    timeout=10    notWantedImage=nao-deve-aparecer.png   
    Input Text    edt-pesquisa-cliente070.png    ${CLIENTE}
    FOR    ${VEZES}  IN RANGE    0    4
        Press Special Key    ENTER
        Sleep   1s
    END
    

Ler Arquivo
    [Documentation]    vai ler um txt contendo código, quantidade e valor dos itens transformando cada linha em um item de uma lista
    Add Image Path    ./resources\\elements\\pgm070
    ${ARQUIVO}    Get File    ./resources\\elements\\pgm070\\codigo-qtd-valor.txt
    ${lINHAS} =    Split String    ${ARQUIVO}    \n
    RETURN    ${LINHAS}    


Inserir Itens
    [Documentation]    vai ler cada item da lista desmenbrando cada dado usando o delimitador ","
    Add Image Path    ./resources\\elements\\pgm070
    ${PRODUTOS} =    Ler Arquivo
    FOR    ${PRODUTO}    IN    @{PRODUTOS}
        ${CODIGO}    ${QTD}    ${VALOR} =    Split String    ${PRODUTO}    ,
        Double Click    edt-pesquisa-item-focado.png  
        Input Text    edt-pesquisa-item-focado.png     ${CODIGO}
        Confirmar E Pausar
        Press Special Key    DELETE
        Input Text    edt-quantidade.png    ${QTD}
        Confirmar E Pausar
        Press Special Key    DELETE
        #substitui o ponto por virgula devido a limitação do campo valor
        ${VALOR_FORMATADO} =    Replace String    ${VALOR}    .    ,
        Input Text    edt-valor.png   ${VALOR_FORMATADO}
        Confirmar E Pausar
    END    
    Click    btn-salvar.png

