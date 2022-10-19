*** Settings ***
Library     Selenium2Library
Variables   ../Pages/LoginPage.py
Variables   ../Pages/DashBoard.py

*** Variables ***
${username}     Admin
${password}     admin123

*** Keywords ***
Login Flow
    wait until element is visible           ${inp_username}
    input text                              ${inp_username}     ${username}
    input password                          ${inp_password}     ${password}
    click button                            ${btn_Login}
    wait until element is visible           ${img_profilePicture}
