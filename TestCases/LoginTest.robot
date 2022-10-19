*** Settings ***
Resource    ../Bases/BaseTest.robot
Resource    ../Microservices/Steps/LoginPageSteps.robot
Test Setup      Start Test
Test Teardown   Finish Test

*** Test Cases ***
Login Test
    Login Flow
