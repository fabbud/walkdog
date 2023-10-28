*** Settings ***
Documentation           Suite de testes da página principal
Resource                ../walkdog/resources/base.resource
Test Setup              Start Session
Test Teardown           Finish Session


*** Test Cases ***
Cadastro de Dog Walker com Sucesso
    [Tags]              happy_path
    [Documentation]     Cadastro de Dog Walkers com sucesso

    Fill signup form    Fernanda Abbud    fabbud@email.com    07274967789    24020-042    107    apt 1001
    Submit signup form
    Popup have text     Recebemos o seu cadastro e em breve retornaremos o contato.


CPF Incorreto
    [Tags]              cpf_inv
    [Documentation]     Teste de cpf incorreto

    Fill signup form    Fernanda Abbud    fabbud@email.com    0727496778a    24020-042    107    apt 1001
    Submit signup form
    Alert have text     CPF inválido


E-mail Incorreto
    [Tags]              email_inv
    [Documentation]     Teste de e-mail incorreto

    Fill signup form    Fernanda Abbud    fabbudemail.com    07274967789    24020-042    107    apt 1001
    Submit signup form
    Alert have text     Informe um email válido


Campos Obrigatórios
    [Tags]                 required
    [Documentation]        Teste de Campos Obrigatórios

    Submit signup form

    Alert have text        Informe o seu nome completo
    Alert have text        Informe o seu melhor email
    Alert have text        Informe o seu CPF
    Alert have text        Informe o seu CEP
    Alert have text        Informe um número maior que zero
    Alert have text        Adcione um documento com foto (RG ou CHN)

