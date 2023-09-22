*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}=    https://opensource-demo.orangehrmlive.com/web/index.php/dashboard/index
${Browser}=    Edge 
*** Keywords ***
Se connecter a l'application orange demo
    Open Browser    ${url}    ${Browser}
    Maximize Browser Window
    Sleep    3
Saisir le nom d'utilisateur
    Clear Element Text    name:username
    Input Text   name:username    Admin
Saisir le mot de passe
    Clear Element Text    name:password    
    Input Password    name:password    admin123
cliquer sur le boutton loging
    Click Button    xpath://button
    Sleep    3
Valider l'affichage de la page d'acceuil
    Element Text Should Be    xpath://h6    Dashboard
