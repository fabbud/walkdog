*** Settings ***

Documentation        Tudo começa aqui
Library              SeleniumLibrary

Resource             pages/SignupPage.robot


*** Variables ***
${BASE_URL}             http://walkdog.vercel.app/signup
${BROWSER}              Chrome


*** Keywords ***
Start Session
    Open Browser          ${BASE_URL}        ${BROWSER}
    Maximize Browser Window

Finish Session
    Capture Page Screenshot
    Close Browser