*** Settings ***
Resource    ../Bases/BaseTest.robot
Resource    ../Microservices/Steps/LoginPageSteps.robot
Resource    ../Microservices/Steps/DashBoardSteps.robot
Resource    ../Microservices/Steps/AddEmployeeSteps.robot
Test Setup      Start Test
Test Teardown   Finish Test

*** Test Cases ***
Add new employee
    Login Flow
    Click to Add Employee
    Fill in information