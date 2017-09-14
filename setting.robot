*** Settings ***
Library    Selenium2Library

*** Variables ***
${URL}    http://venus/Sale_vue
${Browser}    gc

*** Keywords ***
เปิดเบราเซอร์แล้วพิมพ์ URL
    Open Browser    ${URL}    ${Browser}

ปิดหน้าเบราเซอร์
    Close Browser
