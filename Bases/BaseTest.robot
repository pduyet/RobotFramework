*** Settings ***
Library     Selenium2Library
Library     ../DriverManager/GetDriver.py

*** Variables ***
${url}  https://test-business.vntrip.vn/
${title}    Đặt phòng khách sạn trực tuyến tiết kiệm hơn 80% tại Vntrip.vn

*** Keywords ***
Start Test
    ${path}=   get_driver
    create webdriver    Chrome  executable_path=${path}
    set selenium timeout  10 seconds
    set browser implicit wait  10 seconds
    go to               ${url}
    maximize browser window
    title should be     ${title}


Finish Test
    run keyword if test failed      capture page screenshot
    close browser
