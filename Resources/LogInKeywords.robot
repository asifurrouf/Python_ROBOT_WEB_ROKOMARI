*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py

*** Keywords ***
open my browser
    [Arguments]    ${SiteUrl}   ${Browser}
    open browser    ${SiteUrl}   ${Browser}
    maximize browser window

Click SignIn
    click link    ${sign_in}

Enter MailId
    [Arguments]    ${username}
    input text    ${txt_login_mail}     ${username}

Enter PasswordId
    [Arguments]      ${password}
    input text    ${txt_login_pass}     ${password}

Click SignInButton
     click button  ${SignIn_Button}