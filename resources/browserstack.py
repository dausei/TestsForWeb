from browserstack_credentials import USER_NAME, ACCESS_KEY

REMOTE_URL = f"https://{USER_NAME}:{ACCESS_KEY}@hub.browserstack.com/wd/hub"

CAPS_CHROME = {
    "browserName": "Chrome",
    "browserVersion": "latest",
    "os": "Windows",
    "osVersion": "10",
}

CAPS_FIREFOX = {
    "browserName": "Firefox",
    "browserVersion": "latest",
    "os": "Windows",
    "osVersion": "11",
}

CAPS_SAFARI = {
    "os": "OS X",
    "osVersion": "Tahoe",
    "browserName": "Safari",
    "browserVersion": "26.0",
}



