*** Settings ***
Library    Selenium2Library

*** Variables ***
${URL}    http://venus/Sale_vue
${Browser}    gc
@{chrome_arguments}    --disable-infobars    --headless    --disable-gpu

*** Keywords ***
เปิดเบราเซอร์แล้วพิมพ์ URL
    ${chrome_options}=    Set Chrome Options
    Create Webdriver    Chrome    chrome_options=${chrome_options}
    Go To    ${URL}

Set Chrome Options
    [Documentation]    Set Chrome options for headless mode
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    : FOR    ${option}    IN    @{chrome_arguments}
    \    Call Method    ${options}    add_argument    ${option}
    [Return]    ${options}
        
ปิดหน้าเบราเซอร์
    Close Browser
