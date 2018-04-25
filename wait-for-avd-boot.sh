#!/usr/bin/env bash
 
OUT=`/sdk/platform-tools/adb shell getprop dev.bootcomplete`
RES="1"

while [[ ${OUT:0:1}  != $RES ]]; do
		OUT=`/sdk/platform-tools/adb shell getprop dev.bootcomplete`
		echo 'Waiting for emulator to fully boot...'
		echo $OUT
		sleep 5
done

echo "Emulator booted!"
