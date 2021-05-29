*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
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

*** Keywords ***
