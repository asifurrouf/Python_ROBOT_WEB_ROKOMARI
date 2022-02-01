
*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LogInKeywords.robot
Resource    ../Resources/ChangeProfileInfoKeywords.robot

*** Variables ***
${Browser}      chrome
${SiteUrl}      https://www.rokomari.com/book
${user}         01888018837
${password}     lolme1011


*** Test Cases ***
LoginTest1
    open my browser    ${SiteUrl}     ${Browser}
    LoginToRokomari


DropdownMenu_Test
    dropdownMenu

Change_profile_info_Test
    ProfileInfoChange

*** Keywords ***
LoginToRokomari
    Click SignIn

    Enter MailId        ${user}
    Press Keys          ${txt_login_mail}    ENTER
    builtin.sleep       2

    Enter PasswordId    ${password}
    Press Keys          ${txt_login_pass}    ENTER
    builtin.sleep       5

dropdownMenu
    Click DropdownMenu
    Click My_Account

ProfileInfoChange
    Click Change
    Enter Date

