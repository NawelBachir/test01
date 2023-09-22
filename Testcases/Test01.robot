*** Settings ***
Resource    ../Resource/resources01.robot


 
*** Test Cases ***
Tc001 login test 
    Se connecter a l'application orange demo 
    Saisir le nom d'utilisateur
    Saisir le mot de passe 
    cliquer sur le boutton loging
    Valider l'affichage de la page d'acceuil
  
    



    
