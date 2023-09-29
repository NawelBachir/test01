*** Settings ***
Library    SeleniumLibrary
*** Variables ***
#Variable scalaire:    c'est des simple variable qui peuvent contenir une seule variable a la fois(poreée globale)
${Premiere Valeur}=    100
${Deuximeme Valeur}=    200
${Nom}=    Nawel
${Troisieme Valeur}=    200.5
${Browser}=    chrome
${Url}=    https://www.google.com
#Les variable de type liste
@{VILLE}=    Montréal    Laval    Longueuil
@{LISTE VALEUR}=    1    2    3    4   
#Type dictionnaire: on stock les donnée sous forme de paire clé: valeur 
&{URL-ENV}=    qa=https://gougle.qa.ca    dev=https://gougle.dev.ca
*** Test Cases ***
tc01 mon premier test
    Log    ${Premiere Valeur}
    Log    ${Deuximeme Valeur}
    Log    ${Nom}
    Log    ${Troisieme Valeur}
    Log    ${Browser}
    Log    ${Url}
    Log    ${VILLE}[0] 
    Log    ${VILLE}[1]
    Log    ${LISTE VALEUR}[0]
    Log    ${URL-ENV}[qa]
    Log    ${URL-ENV}[dev] 
    #Log    ${QUATRIEME VARIABLE}
tc02 mon deuxieme test
    #${QUATRIEME VARIABLE}=    Log    test 
    Log    ${Nom}