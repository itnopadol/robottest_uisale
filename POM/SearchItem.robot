*** Variables ***
${ปุ่มเพิ่มสินค้า}        //*[@id="web-view"]/button
${ช่อง ค้นหาสินค้า}    //*[@id="SItem"]/div[2]/section/div[2]/input
${ปุ่มค้นหาสินค้า}          //*[@id="SItem"]/div[2]/section/div[3]/button

*** Keywords ***
เลือกสินค้า
    [Arguments]
    กดปุ่มค้นหาสินค้า
    กรอกรหัสสินค้า    2120250
    กดปุ่มค้นหา
    จะพบชื่อสินค้า    น้ำยาเชื่อมท่อ

กดปุ่มค้นหาสินค้า
    Click Button     ${ปุ่มเพิ่มสินค้า}
    Set Selenium Speed    1
    Click Element    xpath=/html/body/div[3]/div[7]/div/button
กรอกรหัสสินค้า
    [Arguments]    ${Itemcode}
    Wait Until Element Is Not Visible     id=loading
    Wait Until Element Is Visible    id=SItem
    Set Selenium Speed    .5
    Wait Until Element Is Visible    ${ปุ่มค้นหาสินค้า}
    Input Text    ${ช่อง ค้นหาสินค้า}    ${Itemcode}
กดปุ่มค้นหา
    Wait Until Element Is Not Visible     id=loading
    Click Element   ${ปุ่มค้นหาสินค้า}
จะพบชื่อสินค้า
    [Arguments]    ${output}
    Wait Until Page Contains    ${output}
    Click Element     //*[@id="SItem"]/div[2]/section/div[4]/div
