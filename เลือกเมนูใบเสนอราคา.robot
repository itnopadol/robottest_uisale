*** Variables ***
${ปุ่ม ใบเสนอราคา}    //*[@id="app"]/div[1]/div/button[1]

*** Keyword ***
เลือกเมนูใบเสนอราคา
     Wait Until Element Is Visible     ${ปุ่ม ใบเสนอราคา}
     Click Element    ${ปุ่ม ใบเสนอราคา}
     Wait Until Page Contains    เลขที่เอกสาร
