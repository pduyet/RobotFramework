*** Settings ***
Library     Selenium2Library
Variables   ../Pages/LoginPage.py
Variables   ../Pages/DashBoard.py

*** Variables ***
${username}     hoa.x.van@vntrip.vn
${password}     xuanhoa12

*** Keywords ***
Login Flow
    wait until element is visible           ${inp_username}
    input text                              ${inp_username}     ${username}
    press keys                              ${inp_username}     CTRL+a  BACKSPACE
    input password                          ${inp_password}     ${password}
    sleep  2s
    clear element text                      ${inp_password}
    click button                            ${btn_Login}

Verify login successfully
    wait until element is visible           ${img_profilePicture}