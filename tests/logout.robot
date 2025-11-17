*** Settings ***
Resource  ../resources/resources.robot
Suite Teardown    Close Browser


*** Variables ***

*** Keywords ***

*** Test Cases ***
Logout on Chrome
    Log out    Chrome    &{CAPS_CHROME}

Logout on Firefox
    Log out    Firefox   &{CAPS_FIREFOX}

Logout on Safari
    Log out    Safari    &{CAPS_SAFARI}

