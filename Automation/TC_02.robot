*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Variables ***

${Browser}      chrome
${SiteUrl}      https://www.rokomari.com.bd/


*** Test Cases ***

BrowseTest2
    open browser    ${SiteUrl}     ${Browser}


*** Keywords ***
