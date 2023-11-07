*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}        chrome
${url}            https://testautomationpractice.blogspot.com/


*** Test Cases ***
FormUseCase
	Open Browser    ${url}      ${browser}
	Maximize Browser Window
	Set Selenium Speed    0.5
	Input Text   xpath://input[@id='name']     Abhishek
    Input Text    id:phone  7204564845
    Input Text    id:textarea   Address
    Scroll Element Into View        //label[contains(text(),'Gender:')]
    Select Radio Button    gender     male
	Select Checkbox    sunday
	Select Checkbox    monday
	Select Checkbox    tuesday
	Select Checkbox    wednesday
	Unselect Checkbox    wednesday
	Scroll Element Into View        //label[contains(text(),'Country:')]
	Select From List By Label    country    United States
	Select From List By Index    country   1
	Select From List By Value    country   uk
	Select From List By Label    colors   Red
	Select From List By Value    colors    blue
	Unselect All From List       colors

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
	Handle Alert    accept
	Click Element    xpath://button[contains(text(),'Prompt')]
	Input Text Into Alert    Abhishek
	Handle Alert    dismiss

TestcaseFrame
	Open Browser    ${url}      ${browser}
	Maximize Browser Window
	Set Selenium Speed    2
    Scroll Element Into View    //h2[contains(text(),'Frames')]
    Select Frame    frame-one796456169
    Input Text    id:RESULT_TextField-0     Abhishek
    Select Radio Button    RESULT_RadioButton-1     Radio-0 

TestCaseWebTable
	Open Browser    ${url}      ${browser}
	Maximize Browser Window
    Set Selenium Speed    2
    Scroll Element Into View    //h2[contains(text(),'Pagination Table')]
    ${text}     Get Text    xpath://td[contains(text(),'Learn Selenium')]
    Log    ${text}




*** Keywords ***