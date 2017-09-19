*** Settings ***
Resource    POM/setting.robot
Resource    POM/login.robot
Resource    POM/สร้างเอกสารใหม่.robot
Resource    POM/เลือกเมนูใบเสนอราคา.robot
Resource    POM/SearchCustomer.robot
Resource    POM/SearchItem.robot
Resource    POM/SearchSale.robot
Resource    POM/save_QT.robot
Test Teardown    ปิดหน้าเบราเซอร์

*** Test Cases ***
สร้างใบเสนอราคาขายสดด้วย user liverbee and password 1234
    เข้าสู่ระบบสำเร็จ    liverbee    1234
    สร้างเอกสารใหม่
    เลือกเมนูใบเสนอราคา
    เลือกลูกค้า
    เลือกสินค้า
    เลือกพนักงานขาย
    กดบันทึกเอกสาร
    แสดงเลขที่ใบเสนอราคา
