#!/bin/bash

sudo apt update >> /dev/null && sudo apt install zip -y >> /dev/null # Ensure zip is up to date.
cd iw4x/
cd iw4x_00/
zip -r iw4x_00.iwd *
mv iw4x_00.iwd ../
cd .. 
rm -rf iw4x_00/
cd iw4x_01/
zip -r iw4x_01.iwd *
mv iw4x_01.iwd ../
cd ..
rm -rf iw4x_01/
cd ..
rm LICENSE
rm README.md
rm -rf .github
zip -r release.zip *
