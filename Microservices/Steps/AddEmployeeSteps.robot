*** Settings ***
Library     Selenium2Library
Library     ImageHorizonLibrary
Library     ../Utils/Utilities.py
Variables   ../Pages/AddEmployee.py

*** Variables ***
${fName}    All
${lName}    Over
${imageName}    Resources\\meo.png

*** Keywords ***
Fill in information
    input text      ${inp_firstName}    ${fName}
    input text      ${inp_lastName}     ${lName}
    click element   ${btn_employeeImage}
    sleep  3
    ${rootPath}=    get RootDir
    log     ${rootPath}
    ${url_image}    set variable  ${rootPath}${imageName}
    type            ${url_image}
    sleep  1
    press combination   KEY.enter
    sleep  3
#    click element   ${btn_save}
#    sleep  5
