*** Settings ***
Resource    ../Resource/resources01.robot
Documentation    cette suite est test crée par Nawel
Suite Setup    Log    j'execute une fois avant le test 
Suite Teardown    Log    j'execute une seule fois apres le test 
Test Setup    Se connecter à l'application orange demo
Test Teardown    Fermer l'application
*** Test Cases ***
Tc001 login test 
    When Saisir le nom d'utilisateur
    And Saisir le mot de passe 
    And cliquer sur le boutton loging
    Then Valider l'affichage de la page d'acceuil
    Fermer l'application
    Log    Fin de tests 
    Log To Console    Fin des tests
    



    
