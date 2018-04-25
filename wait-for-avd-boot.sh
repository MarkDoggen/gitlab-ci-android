#!/usr/bin/env bash
 
OUT=`/sdk/platform-tools/adb shell getprop sys.boot_completed`
RES="1"

while [[ ${OUT:0:1}  != $RES ]]; do
		OUT=`/sdk/platform-tools/adb shell getprop sys.boot_completed`
		echo 'Waiting for emulator to fully boot...'
		sleep 5
done

echo "Emulator booted!"
