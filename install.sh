#!/usr/bin/env bash

rm -r gen
rm -r bin

ant debug && adb install -r bin/warden-debug.apk && \
adb shell am start -a android.intent.action.MAIN \
    -n com.deadcrew.warden/com.deadcrew.warden.MainActivity
