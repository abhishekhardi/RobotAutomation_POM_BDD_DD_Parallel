*** Settings ***
Library         SeleniumLibrary


*** Variables ***
${url}      https://admin-demo.nopcommerce.com/
${browser}      chrome

*** Keywords ***
Open Mybrowser
	Open Browser    ${url}      ${browser}
	Maximize Browser Window
	Click Element    xpath://a[contains(text(),'Log in')]

Close mybrowser
	Close All Browsers

Input username
	[Arguments]    ${username}
	Input Text    id:Email     ${username}

Input pwd
	[Arguments]    ${password}
	Input Text    id:Password     ${password}

Click login
	Click Element    xpath://button[contains(text(),'Log in')]

Click logout
	Click Link     Logout

Error message should be visible
	Page Should Contain    Login was unsuccessful.

Dashboard page should be visible
	Page Should Contain    Dashboard
