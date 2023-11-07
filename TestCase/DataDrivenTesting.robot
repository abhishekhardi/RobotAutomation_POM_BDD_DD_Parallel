*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/Login_resources.robot
Library           DataDriver    ../TestData/LoginData.xlsx      sheet_name=Sheet1
Suite Setup    Open Mybrowser
Suite Teardown      Close Mybrowser
Test Template    Invalid Login


*** Variables ***


*** Test Cases ***
LogintestwithExcelData using  ${username} and  ${password}


*** Keywords ***
Invalid Login
	[Arguments]    ${username}      ${password}
	Input Username    ${username}
	Input Pwd     ${password}
	Click Login
	Error Message Should Be Visible
