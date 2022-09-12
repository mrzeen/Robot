*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${Browser}        Chrome

@{browser1}       https://www.facebook.com/   https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html     https://www.youtube.com/

*** Keywords ***
Open website Facebook  
        Open Browser     ${browser1}[0]            ${Browser}
Open website Robot
        Open Browser     ${browser1}[1]            ${Browser}
Open website youtube
        Open Browser     ${browser1}[2]            ${Browser}


INPUT
        input text  name=search_query   สวยๆๆ 

Click
        Click Button  search-icon-legacy

*** Test Cases ***
Verify that able to open web and verify data success 01
    Open website youtube 
    Maximize Browser Window
    Set Selenium speed  1s
    Close browser

#-------------------------------------------------------------
Verify that able to open web and verify data success 02
    Open website Facebook
    Maximize Browser Window
    Set Selenium speed  1s
    Close browser
 #-------------------------------------------------------------
Verify that able to open web and verify data success 03  
    Open website Robot
    Maximize Browser Window
    Set Selenium speed  1s
    Close browser

# css=#search CSS   เรียกใช้แบบ css
# xpath//*[@id="search"] เรียกใช้แบบ xpath