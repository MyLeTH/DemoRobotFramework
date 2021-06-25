*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/resources.robot
Library    DebugLibrary
Test Setup    Set Selenium speed  5s

*** Variables ***
${browser}  chrome
${url}  https://admin-helper-f21c1.web.app/login

*** Test Cases ***
TC01 LoginTest
    launchBrowser    ${url}  ${browser}
    title should be    nopCommerce demo store
    loginToApplication
    close browser
TC02 TestingInputBox
    open browser    ${url}  ${browser}
    maximize browser window
    title should be    nopCommerce demo store
    ${Pagetitle}=   launchBrowser    ${url}  ${browser}
    log to console    ${PageTitle}


