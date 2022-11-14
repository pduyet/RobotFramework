*** Settings ***
#Library     DataDriver      ../Resources/data.xlsx  sheet_name=Sheet1
Resource    ../Bases/BaseTest.robot
Resource    ../Microservices/Steps/LoginPageSteps.robot
Test Setup     Start Test
Test Teardown  Finish Test
#Test Template   LoginPageSteps.Login Flow

#*** Keywords ***
#Login Test Data
#    [Arguments]                             ${username}         ${password}
#    wait until element is visible           ${inp_username}
#    press keys                              ${inp_username}     CTRL+a  BACKSPACE
#    input text                              ${inp_username}     ${username}
#    press keys                              ${inp_password}     CTRL+a  BACKSPACE
#    input password                          ${inp_password}     ${password}
#    click button                            ${btn_Login}

*** Test Cases ***
#Login Test      ${username}     ${password}
Login Test Function
    Login Flow
    Verify login successfully

