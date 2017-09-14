*** Settings ***
Resource    setting.robot
Resource    login.robot
Resource    สร้างเอกสารใหม่.robot
Resource    เลือกเมนูใบเสนอราคา.robot
Resource    SearchCustomer.robot
Resource    SearchItem.robot
Resource    SearchSale.robot
Test Teardown    ปิดหน้าเบราเซอร์

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
