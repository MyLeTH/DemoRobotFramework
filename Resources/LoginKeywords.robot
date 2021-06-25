*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Variables    ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]    ${SiteUrl}   ${Browser}
    open browser    ${SiteUrl}   ${Browser}
    maximize browser window

Enter Email
     ${email}=    get environment variable  EMAIL
    input text    ${txt_loginUserName}  ${email}

Enter Password
    ${password}=    get environment variable  PASSWORD
    input text    ${txt_loginPassWord}  ${password}

Click Login Button
    click button    ${btn_Login}

Verify Successful Login
    wait until element is not visible   ${btn_Login}
    title should be    AH | Employees List

Close my Browser
    close browser

Enter Email Wolf
     ${email}=    get environment variable  EMAIL
    input text    ${txt_email}  ${email}
