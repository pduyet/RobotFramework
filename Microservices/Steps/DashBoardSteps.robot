*** Settings ***
Library     Selenium2Library
Variables   ../Pages/DashBoard.py
Variables   ../Pages/AddEmployee.py

*** Keywords ***
Click to Add Employee
    click element   ${btn_addEmployee}
    wait until element is visible   ${inp_firstName}
