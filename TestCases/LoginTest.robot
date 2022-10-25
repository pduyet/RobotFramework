*** Settings ***
Library     DataDriver      ../Resources/data.xlsx  sheet_name=Sheet1
Resource    ../Bases/BaseTest.robot
Resource    ../Microservices/Steps/LoginPageSteps.robot
Suite Setup     Start Test
Suite Teardown  Finish Test
Test Template   Login Flow

*** Keywords ***
Login Flow
    [Arguments]                             ${username}         ${password}
    wait until element is visible           ${inp_username}
    input text                              ${inp_username}     ${username}
    input password                          ${inp_password}     ${password}
    click button                            ${btn_Login}
    wait until element is visible           ${img_profilePicture}

*** Test Cases ***
Login Test      ${username}     ${password}
