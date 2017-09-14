*** Variables ***
${ปุ่มเพิ่มสินค้า}        //*[@id="web-view"]/button/i
${ปุ่มตกลง}           /html/body/div[3]/div[7]/div/button
${ช่อง ค้นหาสินค้า}    //*[@id="SItem"]/div[2]/section/div[2]/input
${ปุ่มค้นหา}          //*[@id="SItem"]/div[2]/section/div[3]/button/span/i

*** Keywords ***
เลือกสินค้า
    [Arguments]
    กดปุ่มค้นหาสินค้า
    กรอกรหัสสินค้า    2120250
    กดปุ่มค้นหา
    จะพบชื่อสินค้า    น้ำยาเชื่อมท่อ

กดปุ่มค้นหาสินค้า
    Click Button   ${ปุ่มเพิ่มสินค้า} 
กรอกรหัสสินค้า
    [Arguments]    ${Itemcode}
    Input Text    ${ช่อง ค้นหาสินค้า}    ${Itemcode}
กดปุ่มค้นหา
    Click Button   ${ปุ่มค้นหา}
จะพบชื่อสินค้า
    [Arguments]    ${output}
    Wait Until Page Contains    ${output}
    Capture Page Screensh
