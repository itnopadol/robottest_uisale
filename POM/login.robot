*** Variables ***
${ช่อง Username}    //*[@id="app"]/div[1]/div/div[2]/form/div[1]/p/input
${ช่อง Password}    //*[@id="app"]/div[1]/div/div[2]/form/div[2]/p/input
${ปุ่ม login}    //*[@id="app"]/div[1]/div/div[2]/form/div[3]/p/button

*** Keywords ***
เข้าสู่ระบบสำเร็จ
    [Arguments]    ${user}    ${pass}
    เปิดเบราเซอร์แล้วพิมพ์ URL
    กรอก Username    ${user}
    กรอก Password    ${pass}
    กดปุ่ม login
    จะพบข้อความ   ใบเสนอราคา

กรอก Username
    [Arguments]    ${username}
    Input Text    ${ช่อง Username}     ${username}

กรอก Password
    [Arguments]    ${pwd}
    Input Password    ${ช่อง Password}    ${pwd}

กดปุ่ม login
    Click Button   ${ปุ่ม login}

จะพบข้อความ
      [Arguments]    ${output}
      Wait Until Page Contains    ${output}
      Capture Page Screenshot
