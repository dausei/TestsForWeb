*** Settings ***
Resource  ../resources/resources.robot
Suite Teardown    Close Browser


*** Variables ***

*** Keywords ***

*** Test Cases ***
Buy on Chrome
    Buy    Chrome    &{CAPS_CHROME}

Buy on Firefox
    Buy    Firefox   &{CAPS_FIREFOX}

Buy on Safari
    [Tags]    safari
    Buy    Safari    &{CAPS_SAFARI}

