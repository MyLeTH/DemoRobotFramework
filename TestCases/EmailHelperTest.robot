*** Settings ***
Resource   ../Resources/EmailKeywords.robot
Resource   ../Resources/LoginKeywords.robot
Library    SeleniumLibrary
Library    ImapLibrary2
Library    String
Library    XML

*** Variables ***
${Browser}  chrome
${SiteUrl}  https://www.qawolf.com/
${regex}=  <p .*>([A-Z]{3}-[A-Z]{3})

*** Test Cases ***
EmailTest
#    Open my Browser     ${SiteUrl}  ${Browser}
#    click element    ${btn_Login_Wolf}
#    Enter Email Wolf
#    click element    ${btn_Login_with_email}
    Open Email
    Check mail received    Password
    Get code from email
#    Type Code to login
    Close mailbox


