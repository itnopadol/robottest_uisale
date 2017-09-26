*** keywords ***
กดบันทึกเอกสาร
    Click Element    xpath=//*[@id="app"]/div[1]/div[1]/div[7]/button[1]
    Set Selenium Speed    1
    Click Element    xpath=//*[@id="app"]/div[1]/div[1]/div[7]/button[3]/i

แสดงเลขที่ใบเสนอราคา

    Wait Until Element Is Not Visible     id=loading
    Wait Until Page Contains    S01
    Capture Page Screenshot
