*** Settings ***
Resource    setting.robot

*** Test Cases ***
สร้างใบเสนอราคาขายสดด้วย user liverbee and password 1234
    เข้าสู่ระบบสำเร็จ
    สร้างเอกสารใหม่
    เลือกเมนูใบเสนอราคา
    เลือกลูกค้า
    เลือกสินค้า
    เลือกพนักงานขาย
    กดบันทึกเอกสาร
    แสดงเลขที่ใบเสนอราคา
