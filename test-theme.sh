#!/bin/bash

PROFILE=default

source ./make-xpi.sh
for directory in ~/.mozilla/firefox/*.${PROFILE}
do
    cp elementary-firefox.xpi $directory/extensions/{b398db90-5867-11e0-b8af-0800200c9a66}.xpi
done

killall firefox firefox-bin &>/dev/null; firefox &
