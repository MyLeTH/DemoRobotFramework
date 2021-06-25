*** Settings ***

Suite Setup    log to console   Opening Browser
Suite Teardown    log to console    Closing Browser

Test Setup    log to console   Login to application
Test Teardown    log to console    Logout to application