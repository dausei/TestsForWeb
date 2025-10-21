*** Settings ***
Library  SeleniumLibrary
Variables   ./locators.py
Variables   ./testData.py

*** Keywords ***
Log in
    Open Browser    ${baseUrl}      Chrome
    wait until page contains element    ${logInButton}    timeout=80      error=logInButtonNotFound
    sleep   1s
    click element   ${logInButton}
    wait until page contains element     ${loginUsernameField}    timeout=80      error=logInButtonNotFound
    sleep   1s
    input text      ${loginUsernameField}      ${login}
    Input Password    ${loginPasswordField}      ${password}
    Sleep    1s
    Click Element    ${logInFormButton}
    Sleep    2s

Close Browser
    Close All Browsers


Sign Up
    Open Browser    ${baseUrl}      Chrome
    wait until page contains element    ${signUpButton}    timeout=80      error=logInButtonNotFound
    sleep   1s
    click element   ${signUpButton}
    wait until page contains element     ${signUpUsername}    timeout=80      error=logInButtonNotFound
    sleep   1s
    Input Text    ${signUpUsername}    ${login}
    Sleep    1s
    Input Password    ${signUpPassword}    ${password}
    Sleep    1s
    Click Element    ${signUpFormButton}
    Sleep    2s

Log out
    Open Browser    ${baseUrl}      Chrome
    wait until page contains element    ${logInButton}    timeout=80      error=logInButtonNotFound
    sleep   1s
    Click Element   ${logInButton}
    wait until page contains element     ${loginUsernameField}    timeout=80      error=logInButtonNotFound
    sleep   1s
    input text      ${loginUsernameField}      ${login}
    Input Password    ${loginPasswordField}      ${password}
    Sleep    1s
    Click Element    ${logInFormButton}
    Sleep    1s
    wait until page contains element    ${logOutButton}     timeout=80      error=logOutButtonNotFound
    sleep   1s
    Click Element   ${logOutButton}
    wait until page contains element    ${logInButton}  timeout=80  error=logOutButtonDidNotWork
    Sleep   3s

Buy
    Open Browser    ${baseUrl}      Chrome
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

 
