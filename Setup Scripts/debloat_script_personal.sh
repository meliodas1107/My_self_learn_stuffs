#!/bin/bash

adb shell pm uninstall -k --user 0 com.google.android.youtube
adb shell pm uninstall -k --user 0 com.heytap.browser
adb shell pm uninstall -k --user 0 com.heytap.cloud
adb shell pm uninstall -k --user 0 com.heytap.market
adb shell cmd package install-existing --user 0 com.coloros.gamespace
adb shell pm uninstall -k --user 0 com.google.android.apps.youtube.music
adb shell pm uninstall -k --user 0 com.coloros.phonemanager
