*** Settings ***
Resource  ../resources/resources.robot
Suite Teardown    Close Browser


*** Variables ***

*** Keywords ***

*** Test Cases ***
SignUp on Chrome
    Sign up    Chrome    &{CAPS_CHROME}

SignUp on Firefox
    Sign up    Firefox   &{CAPS_FIREFOX}

SignUp on Safari
    [Tags]    safari
    Sign Up  Safari    &{CAPS_SAFARI}