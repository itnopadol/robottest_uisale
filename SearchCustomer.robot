*** Variables ***
${ปุ่มค้นหาลูกค้า}      //*[@id="app"]/div[1]/div[1]/div[3]/div[4]/input
${ช่อง ค้นหาลูกค้า}    //*[@id="SCusto"]/div[2]/section/div[2]/input
${ปุ่มค้นหา}         //*[@id="SCusto"]/div[2]/section/div[3]/button/span/i

*** Keywords ***
เลือกลูกค้า
    กดปุ่มค้นหาลูกค้า
    กรอกรหัสลูกค้า    A17105
    กดปุ่มค้นหา
    จะพบชื่อลูกค้า    ภธิณ

กดปุ่มค้นหาลูกค้า
    Wait Until Element Is Visible     ${ปุ่มค้นหาลูกค้า}
    Wait Until Page Contains    60
    Click Element   ${ปุ่มค้นหาลูกค้า}
# กรอกรหัสลูกค้า
#     [Arguments]    ${CustomerCode}
#     Wait Until Page Contains    60
#     Input Text    ${ช่อง ค้นหาลูกค้า}    ${CustomerCode}
# กดปุ่มค้นหา
#     Wait Until Element Is Visible     ${ปุ่มค้นหา}
#     Click Button   ${ปุ่มค้นหา}
# จะพบชื่อลูกค้า
#     [Arguments]    ${output}
#     Wait Until Page Contains    ${output}
#     Capture Page Screensh
