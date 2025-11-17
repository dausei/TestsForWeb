*** Settings ***
Library  SeleniumLibrary
Variables   ./locators.py
Variables   ./testData.py
Variables   ./browserstack.py

*** Keywords ***
Log in
    [Arguments]    ${BROWSER}    &{CAPS}
    Open Browser    ${baseUrl}    ${BROWSER}    remote_url=${REMOTE_URL}    desired_capabilities=&{CAPS}

    Wait Until Element Is Visible    ${logInButton}    30s
    Scroll Element Into View         ${logInButton}
    Sleep    1s
    Execute Javascript    window.document.getElementById('login2').click()

    Wait Until Element Is Visible    ${loginUsernameField}    30s
    Input Text      ${loginUsernameField}      ${login}
    Input Password  ${loginPasswordField}      ${password}
    Sleep    1s
    Click Element   ${logInFormButton}
    Sleep    2s



Close Browser
    Close All Browsers


Sign Up
    [Arguments]    ${BROWSER}    &{CAPS}
    Open Browser    ${baseUrl}    ${BROWSER}    remote_url=${REMOTE_URL}    desired_capabilities=&{CAPS}

    Wait Until Element Is Visible    ${signUpButton}    30s
    Scroll Element Into View         ${signUpButton}
    Sleep   1s
    Execute Javascript    window.document.getElementById('signin2').click()

    Wait Until Element Is Visible    ${signUpUsername}    30s
    Input Text    ${signUpUsername}    ${login}
    Sleep    1s
    Input Password    ${signUpPassword}    ${password}
    Sleep    1s
    Click Element    ${signUpFormButton}
    Sleep    2s

    
Log out
    [Arguments]    ${BROWSER}    &{CAPS}
    Open Browser    ${baseUrl}    ${BROWSER}    remote_url=${REMOTE_URL}    desired_capabilities=&{CAPS}

    Wait Until Element Is Visible    ${logInButton}    30s
    Scroll Element Into View         ${logInButton}
    Sleep   1s
    Execute Javascript    window.document.getElementById('login2').click()

    Wait Until Element Is Visible    ${loginUsernameField}    30s
    Input Text      ${loginUsernameField}      ${login}
    Input Password  ${loginPasswordField}      ${password}
    Sleep    1s
    Click Element    ${logInFormButton}
    Sleep    1s

    Wait Until Element Is Visible    ${logOutButton}    30s
    Scroll Element Into View         ${logOutButton}
    Sleep   1s
    Execute Javascript    window.document.getElementById('logout2').click()

    Wait Until Page Contains Element    ${logInButton}  timeout=80  error=logOutButtonDidNotWork
    Sleep   3s




Buy
    [Arguments]    ${BROWSER}    &{CAPS}
    Open Browser    ${baseUrl}    ${BROWSER}    remote_url=${REMOTE_URL}    desired_capabilities=&{CAPS}
    Maximize Browser Window
    Wait Until Page Contains Element    ${phoneToBuy}   timeout=80
    Click Element   ${phoneToBuy}

    Wait Until Page Contains Element    ${addToCartButton}  timeout=80
    Click Element   ${addToCartButton}
    Handle Alert    accept

    Wait Until Page Contains Element    ${cartButton}   timeout=80
    Click Element   ${cartButton}

    Wait Until Page Contains Element    ${placeOrderButton}   timeout=80
    Wait Until Element Is Visible       ${placeOrderButton}   30s
    Click Element                       ${placeOrderButton}

    Wait Until Element Is Visible       ${nameField}          30s
    Input Text    ${nameField}      ${name}
    Input Text    ${countryField}   ${country}
    Input Text    ${cityField}      ${city}
    Input Text    ${cardField}      ${card}
    Input Text    ${monthField}     ${month}
    Input Text    ${yearField}      ${year}

    Sleep   2s
    Wait Until Element Is Visible       ${purchaseButton}     30s
    Wait Until Element Is Enabled       ${purchaseButton}
    Execute JavaScript    window.document.querySelector('button[onclick="purchaseOrder()"]').click()

 
