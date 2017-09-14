*** Variables ***
${ปุ่มค้นหาลูกค้า}      //*[@id="app"]/div[1]/div[1]/div[3]/div[4]/i
${ช่อง ค้นหาลูกค้า}    //*[@id="SCusto"]/div[2]/section/div[2]/input
${ปุ่มค้นหา}         //*[@id="SCusto"]/div[2]/section/div[3]/button/span/i

*** Keywords ***
เลือกลูกค้า
    [Arguments]
    กดปุ่มค้นหาลูกค้า
    กรอกรหัสลูกค้า    A17105
    กดปุ่มค้นหา
    จะพบชื่อลูกค้า    ภธิณ

กดปุ่มค้นหาลูกค้า
    Click Button   ${ปุ่มค้นหาลูกค้า}
กรอกรหัสลูกค้า
    [Arguments]    ${CustomerCode}
    Input Text    ${ช่อง ค้นหาลูกค้า}    ${CustomerCode}
กดปุ่มค้นหา
    Click Button   ${ปุ่มค้นหา}
จะพบชื่อลูกค้า
    [Arguments]    ${output}
    Wait Until Page Contains    ${output}
    Capture Page Screensh
