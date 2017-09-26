*** Keywords ***
สร้างเอกสารใหม่
    Wait Until Element Is Not Visible    id=loading
    Click Button    id=bt_tools
    Click Button    id=new_doc
    # Go to     http://venus/Sale_vue/#/menuDoc
    Wait Until Page Contains    เลือกประเภทเอกสาร
