***Settings***
Resource    ../resources/elements/login/login.robot
Resource    ../resources/elements/pgm001/pgm001.robot
Resource    ../resources/elements/pgm040/pgm040.robot
Resource    ../resources/elements/pgm070/pgm070.robot

*** Test Cases ***
Caso De Teste Exemplo
    Realizar Login    1    1    1
    Acessar o Pgm    070
    #Cadastrar Cliente
    #Excluir Cadastro
    Criar Orcamento    Virtux
    Inserir Itens
    Sair Edicao070
    
    


