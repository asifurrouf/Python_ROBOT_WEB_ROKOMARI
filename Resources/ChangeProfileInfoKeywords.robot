*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py

*** Keywords ***

Click DropdownMenu
     click link    ${profile}
Click My_Account
    click link    ${My_Account}
Click Change
    click element    ${Info_Change}
