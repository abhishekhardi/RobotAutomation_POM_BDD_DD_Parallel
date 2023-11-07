*** Settings ***
Library         SeleniumLibrary


*** Variables ***
${url}      https://admin-demo.nopcommerce.com/
${browser}      chrome


*** Keywords ***
User is on login page
	Open Browser    ${url}      ${browser}
	Maximize Browser Window
    #Click Element    xpath://a[contains(text(),'Log in')]

Logs in with
	[Arguments]   ${username}  ${password}
	Clear Element Text  id:Email
    Input Text    id:Email     ${username}
    Clear Element Text  id:Password
    Input Text    id:Password     ${password}
    Click Element    xpath://button[contains(text(),'Log in')]

Error message should be displayed
	Page Should Contain    Login was unsuccessful.

Please enter your email should be displayed
	 Page Should Contain    Please enter your email


