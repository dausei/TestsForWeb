*** Settings ***
Resource  ../resources/resources.robot
Suite Teardown    Close Browser


*** Variables ***

*** Keywords ***

*** Test Cases ***
Login on Chrome
    Log in    Chrome    &{CAPS_CHROME}

Login on Firefox
    Log in    Firefox   &{CAPS_FIREFOX}

Login on Safari
    Log in    Safari    &{CAPS_SAFARI}

