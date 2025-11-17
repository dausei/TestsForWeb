*** Settings ***
Resource  ../resources/resources.robot
Suite Teardown    Close Browser


*** Variables ***

*** Keywords ***

*** Test Cases ***
Buy on Chrome
    Buy    Chrome    &{CAPS_CHROME}

Login on Firefox
    Buy    Firefox   &{CAPS_FIREFOX}

Login on Safari
    Buy    Safari    &{CAPS_SAFARI}

