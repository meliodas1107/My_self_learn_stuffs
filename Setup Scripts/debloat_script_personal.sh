#!/bin/bash

adb shell pm uninstall -k --user 0 com.google.android.youtube
adb shell pm uninstall -k --user 0 com.heytap.browser
adb shell pm uninstall -k --user 0 com.heytap.cloud
adb shell pm uninstall -k --user 0 com.heytap.market
adb shell cmd package install-existing --user 0 com.coloros.gamespace
adb shell pm uninstall -k --user 0 com.google.android.apps.youtube.music
adb shell pm uninstall -k --user 0 com.coloros.phonemanager
 adb shell pm disable-user --user 0  com.heytap.market
 adb shell pm disable-user --user 0 com.heytap.themestore
 adb shell pm uninstall --user 0 com.heytap.usercenter 
 #adb shell pm uninstall --user 0 com.heytap.habit.analysis
