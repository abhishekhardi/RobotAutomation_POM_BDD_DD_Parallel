*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/BDD_resource.robot
Suite Setup       User Is On Login Page
Suite Teardown    Close All Browsers


*** Variables ***


*** Test Cases ***
Invalid Login TC1
	Given Logs in with  admin@yourstore.com     adm
	Then Error message should be displayed

Invalid Login TC2
	Given Logs in with  admi@yourstore.com     admin
	Then Error message should be displayed

Invalid Login TC3
	Given Logs in with  admi@yourstore.com     adm
	Then Error message should be displayed

Invalid Login TC4
	Given Logs in with  ${EMPTY}     admin
	Then Please enter your email should be displayed

Invalid Login TC5
	Given Logs in with  admin@yourstore.com    ${EMPTY}
	Then Error message should be displayed

Invalid Login TC6
	Given Logs in with  ${EMPTY}     ${EMPTY}
	Then Please enter your email should be displayed



