*** Settings ***
Documentation           Suite de testes da página principal

Library                 SeleniumLibrary

*** Test Cases ***
Webapp deve estar online
    Open Browser            http://walkdog.vercel.app    chrome
    Title Should Be         Walkdog by Papito
    Page Should Contain     Cuidado e diversão em cada passo
    Close Browser