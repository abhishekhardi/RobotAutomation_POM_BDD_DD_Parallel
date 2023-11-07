*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}        headlesschrome
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