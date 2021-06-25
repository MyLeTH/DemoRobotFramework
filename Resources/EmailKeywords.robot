*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    ImapLibrary2
Library    String
Library    XML
Variables    ../PageObjects/Locators.py

*** Keywords ***
Open Email
    ${email}=    get environment variable  EMAIL
    ${password}=    get environment variable  PASSWORD
    open mailbox    host=imap.gmail.com    user=myle.8174+13gmail.com   password=${password}
Clean up
    Open Email
    DELETE ALL EMAILS
    close mailbox
Check mail received
    [Arguments]   ${email_body}
    ${email}=    get environment variable  EMAIL
    ${LATEST} =    wait for email    recipient=${email}   subject=QA Wolf   timeout=300
    ${body}=    get email body  ${LATEST}
    should contain    ${body}    ${email_body}
Get latest email body
    ${email}=    get environment variable  EMAIL
    ${LATEST} =    wait for email    recipient=${email}   subject=QA Wolf   timeout=300
    ${body}=    get email body  ${LATEST}
    [Return]    ${body}
Get code from email
    ${regex}=   set variable    <p .*>([A-Z]{3}-[A-Z]{3})
    ${body} =    Get latest email body
    ${result} =     get regexp matches    ${body}   ${regex}  1
    ${result} =     convert to string    ${result}
    ${result} =     get substring   ${result}   2  9
    ${result} =     remove string   ${result}   -
    [Return]    ${result}
Type Code to login
    ${code} =   Get code from email
    press keys     ${txt_code}  ${code}
