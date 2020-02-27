*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}      chrome
${URL}          http://pokedex-angular-example.herokuapp.com/#!/list

*** Keywords ***
#Setup e Teardown
Abrir navegador
    Open Browser    about:blank   ${BROWSER}

Fechar navegador
    Close Browser

#AÇÕES

Dado que estou na pagina da pokedex
  Go To               ${URL}
E clico para adicionar um novo Pokemon
  Click Element       class="btn.sucess"

#Quando preencho as informações
#E clico em salvar
#Então um novo Pokemon é adicionado na pokedex
