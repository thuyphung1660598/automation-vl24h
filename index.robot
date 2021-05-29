*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://vieclam24h.vn/
${Username}    ptt1660598@gmail.com
${Password}    ptt1660598@gmail.com
*** Test Cases ***
LoginTest
    open browser    ${url}    ${browser}
    loginNTV
    UpdateThongTinCaNhan
#    close browser

*** Keywords ***
loginNTV
    maximize browser window
    click element    xpath=//*[@id="fn-header-home"]/div[1]/div/div[2]/ul/li[1]/a
    wait until element is visible    xpath=//*[@id="__next"]/main/div[1]/div[2]/div[2]/div/div[1]/div/div/div[2]/div/div/div[1]/div/div[2]/div[1]/a
    click element    xpath=//*[@id="__next"]/main/div[1]/div[2]/div[2]/div/div[1]/div/div/div[2]/div/div/div[1]/div/div[2]/div[1]/a
    wait until element is visible    xpath=//*[@class="form-hook"]//input[@name="email"]
    input text    xpath=//*[@class="form-hook"]//input[@name="email"]    ${Username}
    input text    xpath=//*[@class="form-hook"]//input[@name="password"]    ${Password}
    click element    xpath=//*[@class="form-hook"]//button[@type="submit"]
    wait until element is visible    xpath=//*[@id="fn-header-home"]/div[1]/div/div[2]/div/div[2]/a/figure
    click element    xpath=//*[@id="fn-header-home"]/div[1]/div/div[2]/div/div[2]/a/figure

UpdateThongTinCaNhan
    wait until element is visible    //*[@id="__next"]/main/div[1]/div[2]/div[2]/div/div[2]/div[2]/div/div[8]/a
    click element    xpath=//*[@id="__next"]/main/div[1]/div[2]/div[2]/div/div[2]/div[2]/div/div[8]/a
    wait until element is visible   xpath=//input[@name="name"]
    input text    xpath=//input[@name="name"]    Thúy Phùng
    select from list by label    day    23
    select from list by value    month    10
    select from list by value    month    10
    select from list by value    years    2002

    select radio button    gender    2
    select radio button    marital_status    3

    input text    xpath=//input[@name="address"]    Thích ở đâu thì ở

    click element    xpath=//*[@id="__next"]/main/div[1]/div[2]/div[2]/div[1]/div/div[1]/div/div[2]/form/div[1]/div[7]/div/div/div/span/span

    click element    xpath=//*[@class="select__menu-list"]//div[text()='Bà Rịa - Vũng Tàu']

    click element    xpath=//button[@type="submit"]

#    Test Push Success