*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://admin-helper-f21c1.web.app/login

*** Keywords ***
launchBrowser
    [Arguments]    ${appurl}  ${appbrowser}
    open browser    ${appurl}  ${appbrowser}
    maximize browser window
    ${title}=   get title
    [Return]    ${title}
loginToApplication
    click link    xpath://a[.='Log in']
    input text    id:Email  pavanoltraining@gmail.com
    input text    id:Password   Test@123
    click element    xpath://button[@class='button-1 login-button']