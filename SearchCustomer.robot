*** Variables ***
${ปุ่มค้นหาลูกค้า}      //*[@id="app"]/div[1]/div[1]/div[3]/div[4]
${ช่อง ค้นหาลูกค้า}    //*[@id="SCusto"]/div[2]/section/div[2]/input
${ปุ่มค้นหา}         //*[@id="SCusto"]/div[2]/section/div[3]/button

*** Keywords ***
เลือกลูกค้า
    กดปุ่มค้นหาลูกค้า1
    กรอกรหัสลูกค้า    41054
    กดปุ่มค้นหาลูกค้า2
    จะพบชื่อลูกค้า    1271092

กดปุ่มค้นหาลูกค้า1
    Wait Until Page Contains    60
    Wait Until Element Is Visible     ${ปุ่มค้นหาลูกค้า}
กรอกรหัสลูกค้า
    [Arguments]    ${CustomerCode}
    Focus    ${ปุ่มค้นหาลูกค้า}
    Click Element   ${ปุ่มค้นหาลูกค้า}
    Focus    ${ช่อง ค้นหาลูกค้า}
    Input Text    ${ช่อง ค้นหาลูกค้า}    ${CustomerCode}
กดปุ่มค้นหาลูกค้า2
    Wait Until Element Is Visible     ${ปุ่มค้นหา}
    Click Button   ${ปุ่มค้นหา}
    Wait Until Page Contains     1271092
จะพบชื่อลูกค้า
    [Arguments]    ${output}
    Wait Until Page Contains    ${output}
