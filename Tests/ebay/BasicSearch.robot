*** settings ***
Documentation  Basic search functionality for eBay
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  This test case verifies the basic search
    [tags]  Shekhar Pandey

    Start Test
    Verify Search Results
    Finish Test Case

*** keywords ***

Start Test
    Open Browser  https://www.ebay.com  chrome
    Maximize Browser Window

Verify Search Results
    Input Text  xpath://*[@id="gh-ac"]  mobile
    Press keys  xpath://*[@id="gh-btn"]  [Return]
    Page Should Contain  results for mobile

Finish Test Case
    Close Browser