*** Variables ***
${ปุ่มค้นหาพนักงาน}      //*[@id="app"]/div[1]/div[1]/div[6]/div[1]/div[2]/i
${ช่อง ค้นหาพนักงาน}    //*[@id="SEmplo"]/div[2]/section/div[2]/input
${ปุ่มค้นหา}           //*[@id="SEmplo"]/div[2]/section/div[3]/button

*** Keywords ***
เลือกพนักงานขาย
    [Arguments]
    กดปุ่มค้นหาพนักงานขาย
    กรอกรหัสพนักงาน    56163
    กดปุ่มค้นหาพนักงาน
    จะพบชื่อพนักงาน    เอกชัย

กดปุ่มค้นหาพนักงานขาย
    Click Button   ${ปุ่มค้นหาพนักงาน}
กรอกรหัสพนักงาน
    [Arguments]    ${SaleCode}
    Input Text    ${ช่อง ค้นหาพนักงาน}    ${SaleCode}
กดปุ่มค้นหาพนักงาน
    Click Button   ${ปุ่มค้นหา}
จะพบชื่อพนักงาน
    [Arguments]    ${output}
    Wait Until Page Contains    ${output}
    Capture Page Screensh
