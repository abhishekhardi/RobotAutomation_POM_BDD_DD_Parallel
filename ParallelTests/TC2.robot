*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}        chrome
${url}            https://testautomationpractice.blogspot.com/


*** Test Cases ***
TestcaseAlertBox
	Open Browser    ${url}      ${browser}
	Maximize Browser Window
	Set Selenium Speed    2
	Click Element    xpath://button[contains(text(),'Alert')]
	Sleep    1
	Handle Alert    accept
	Click Element   xpath://button[contains(text(),'Confirm Box')]
	Handle Alert    accept
	Click Element   xpath://button[contains(text(),'Confirm Box')]
	Handle Alert    dismiss
	Click Element    xpath://button[contains(text(),'Prompt')]
	Input Text Into Alert    Abhishek
	Click Element    xpath://button[contains(text(),'Prompt')]
	Input Text Into Alert    Abhishek
	Handle Alert    dismiss



*** Keywords ***