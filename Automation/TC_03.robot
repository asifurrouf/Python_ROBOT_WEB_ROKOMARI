
*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LogInKeywords.robot

*** Variables ***
${Browser}      chrome
${SiteUrl}      https://www.rokomari.com/book
${user}         01888018837
${password}     lolme1011

*** Test Cases ***
LoginTest1
    open my browser    ${SiteUrl}     ${Browser}
    LoginToRokomari


*** Keywords ***
LoginToRokomari
    Click SignIn

    Enter MailId        ${user}
    Press Keys          ${txt_login_mail}    ENTER
    builtin.sleep       2

    Enter PasswordId    ${password}
    Press Keys          ${txt_login_pass}    ENTER
    builtin.sleep       5
