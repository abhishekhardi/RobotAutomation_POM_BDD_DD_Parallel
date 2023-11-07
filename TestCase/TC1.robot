*** Settings ***
Library           SeleniumLibrary



*** Variables ***
${browser}        chrome
${url}            https://demo.nopcommerce.com/



*** Test Cases ***
LoginTest
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Title Should Be     nopCommerce demo store
    logintoApplication
    ${logoutbtn}  Set Variable  xpath://a[contains(text(),'Log out')]
    Element Should Be Visible    ${logoutbtn}
    Element Should Be Enabled    ${logoutbtn}
    logout
    #Close Browser




*** Keywords ***
logintoApplication
    Click Link    xpath://a[contains(text(),'Log in')]
    Input Text    xpath://input[@id='Email']    abhihardi@gmail.com
    Input Text    xpath://input[@id='Password']    Test@123
    Click Element    xpath://button[contains(text(),'Log in')]

logout
    Click Element    xpath://a[contains(text(),'Log out')]
