*** Settings ***
Library    Selenium2Library

*** Variables ***
${URL}    http://venus/Sale_vue
${Browser}    gc
# @{chrome_arguments}    --disable-infobars    --headless    --disable-gpu

*** Keywords ***
เปิดเบราเซอร์แล้วพิมพ์ URL
    Open Browser    ${URL}  ${Browser}

ปิดหน้าเบราเซอร์
    Close Browser
