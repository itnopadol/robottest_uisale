*** Variables ***
${ปุ่มค้นหาลูกค้า}      //*[@id="app"]/div[1]/div[1]/div[3]/div[4]
${ช่อง ค้นหาลูกค้า}    //*[@id="SCusto"]/div[2]/section/div[2]/input
${ปุ่มค้นหา}         //*[@id="SCusto"]/div[2]/section/div[3]/button

*** Keywords ***
เลือกลูกค้า
    กดปุ่มค้นหาลูกค้า1
    กรอกรหัสลูกค้า    41054
    กดปุ่มค้นหาลูกค้า2
    จะพบชื่อลูกค้า    บริษัท

กดปุ่มค้นหาลูกค้า1
    Wait Until Page Contains    60
    Wait Until Element Is Visible     ${ปุ่มค้นหาลูกค้า}
กรอกรหัสลูกค้า
    [Arguments]    ${CustomerCode}
    Wait Until Element Is Not Visible    id=loading
    Focus    ${ปุ่มค้นหาลูกค้า}
    Click Element   ${ปุ่มค้นหาลูกค้า}
    Set Selenium Timeout    5
    Wait Until Element Is Not Visible    id=loading
    Focus    ${ช่อง ค้นหาลูกค้า}
    Input Text    ${ช่อง ค้นหาลูกค้า}    ${CustomerCode}
กดปุ่มค้นหาลูกค้า2
    Click Button   ${ปุ่มค้นหา}
    Wait Until Element Is Not Visible    id=loading
    click Element    //*[@id="SCusto"]/div[2]/section/div[4]/div[1]
จะพบชื่อลูกค้า
    [Arguments]    ${output}
    Wait Until Page Contains    ${output}
