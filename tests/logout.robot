*** Settings ***
Resource  ../resources/resources.robot
Suite Teardown    Safe Close Browsers


*** Variables ***

*** Keywords ***

*** Test Cases ***
Logout on Chrome
    Log out    Chrome    &{CAPS_CHROME}

Logout on Firefox
    Log out    Firefox   &{CAPS_FIREFOX}

Logout on Safari
    [Tags]    safari
    Log out   Safari    &{CAPS_SAFARI}

