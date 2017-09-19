*** Keywords ***
สร้างเอกสารใหม่
    Wait Until Page Contains    W01
    Click Button    id=bt_tools
    Click Button    id=new_doc
    # Go to     http://venus/Sale_vue/#/menuDoc
    Wait Until Page Contains    เลือกประเภทเอกสาร
