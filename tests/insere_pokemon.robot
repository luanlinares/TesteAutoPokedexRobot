*** Settings ***
Resource        ../resource/Resource.robot
Test Setup      Abrir navegador
Test Teardown   Fechar navegador

*** Variables ***
${URL}          http://pokedex-angular-example.herokuapp.com/#!/list
${BROWSER}      chrome

*** Test Case ***
Cenário: Inserir um novo Pokemon na pokedex
  Dado que estou na pagina da pokedex
  E clico para adicionar um novo Pokemon
  Quando preencho as informações
  E clico em salvar
  Então um novo Pokemon é adicionado na pokedex