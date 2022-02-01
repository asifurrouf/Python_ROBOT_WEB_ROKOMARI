*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Variables ***

${Browser}      chrome
${SiteUrl}      https://www.rokomari.com/book


*** Test Cases ***

BrowseTest1
    open browser    ${SiteUrl}     ${Browser}
    Maximize Browser Window

*** Keywords ***
