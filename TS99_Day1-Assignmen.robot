*** Settings ***
Library          SeleniumLibrary


*** Variables ***
${BROWSER}           Chrome
${URL}               https://www.thaiwatsadu.com/


*** Test Cases ***
TC001_Thaiwatsadu
    Log To Console      ${\n}${\n}HAPPY

    Begin Webpage

    # Wait Until Element Is Visible   xpath=(//i[@class="fas fa-times"])[2]
    # Click Element                   xpath=(//i[@class="fas fa-times"])[2]
        WaitUntilandClick             xpath=(//i[@class="fas fa-times"])[2]
        Set Selenium Speed  0.5s

    
    # Wait Until Element Is Visible   xpath=//button[@class="btn btnaccept"]
    # Click Element                   xpath=//button[@class="btn btnaccept"]
    WaitUntilandClick                   xpath=//button[@class="btn btnaccept"]

    Wait Until Element Is Visible   xpath=(//input[@type="text"])[2]
    Input Text                      xpath=(//input[@type="text"])[2]         เครื่องปรับอากาศ


    # Wait Until Element Is Visible   xpath=//button[@type="submit"][@aria-label="Search"]
    # Click Element                   xpath=//button[@type="submit"][@aria-label="Search" ]
    WaitUntilandClick                xpath=//button[@type="submit"][@aria-label="Search"]

    # Wait Until Element Is Visible       xpath=//span[@class="skucard "][.="รหัสสินค้า: 60334762"]
    # SetFocus                               xpath=//span[@class="skucard "][.="รหัสสินค้า: 60334762"]
    # Click Element                       xpath=//span[@class="skucard "][.="รหัสสินค้า: 60334762"]
    Wait and Focus and Cilck             //span[@class="skucard "][.="รหัสสินค้า: 60334762"]

    Wait Until Element Is Visible        xpath=//div[@class="productname "]
    ${Product}        Get Text           xpath=//div[@class="productname "]
    Log               ${Product}  
    Log To Console    ${\n}${\n}${Product}

    Should Be Equal   ${Product}   เครื่องปรับอากาศ Inverter HAIER รุ่น HSU-18VTRA03T ขนาด 18,000 บีทียู สีขาว
    Should Contain    ${Product}   HSU-18VTRA03T
    Capture Page Screenshot 
    Close Browser

   

*** Keywords ***
Begin Webpage
        Open Browser            ${URL}     ${BROWSER}
        Maximize Browser Window
WaitUntilandClick
     [Arguments]    ${WaitUntilandClick}

        Wait Until Element Is Visible    ${WaitUntilandClick}
        Click Element         ${WaitUntilandClick}
        
Wait and Focus and Cilck
  [Arguments]     ${path}   
  Wait Until Element Is Visible       xpath=${path}
  Set Focus To Element                xpath=${path}
  Click Element                       xpath=${path}



        







