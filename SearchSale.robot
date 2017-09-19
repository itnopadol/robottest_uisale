*** Variables ***
${ปุ่มค้นหาพนักงาน}            //*[@id="app"]/div[1]/div[1]/div[6]/div[1]/div[2]/i
${ช่อง ค้นหาพนักงาน}          //*[@id="SEmplo"]/div[2]/section/div[2]/input
${ปุ่มค้นหาพนักงาน1}            //*[@id="SEmplo"]/div[2]/section/div[3]/button/span/i

*** Keywords ***
เลือกพนักงานขาย
    [Arguments]
    กดปุ่มค้นหาพนักงานขาย
    กรอกรหัสพนักงาน    56163
    กดปุ่มค้นหาพนักงาน
    จะพบชื่อพนักงาน    เอกชัย

กดปุ่มค้นหาพนักงานขาย
    Wait Until Element Is Not Visible    id=loading
    Focus    ${ปุ่มค้นหาพนักงาน}
    Click Element   ${ปุ่มค้นหาพนักงาน}
กรอกรหัสพนักงาน
    [Arguments]    ${SaleCode}
    Wait Until Element Is Not Visible    id=loading
    Focus    ${ช่อง ค้นหาพนักงาน}
    Input Text    ${ช่อง ค้นหาพนักงาน}    ${SaleCode}
กดปุ่มค้นหาพนักงาน
    Wait Until Element Is Not Visible    id=loading
    Click Element   ${ปุ่มค้นหาพนักงาน1}
จะพบชื่อพนักงาน
    [Arguments]    ${output1}
    Wait Until Page Contains    ${output1}
    Capture Page Screenshot
