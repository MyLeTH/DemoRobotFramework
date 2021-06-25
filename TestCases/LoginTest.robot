*** Settings ***
Resource   ../Resources/LoginKeywords.robot
Library    SeleniumLibrary
Library    ImapLibrary
*** Variables ***
${Browser}  chrome
${SiteUrl}  https://admin-helper-f21c1.web.app/login

*** Test Cases ***
LoginTest
    Open my Browser     ${SiteUrl}  ${Browser}
    Enter Email
    Enter Password
    Click Login Button
    Verify Successful Login
    Close my Browser
    open mailbox