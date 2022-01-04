#!/bin/bash

sudo apt update >> /dev/null && sudo apt install zip -y >> /dev/null # Ensure zip is up to date.
cd iw4x/
cd iw4x_00/
zip -r iw4x_00.iwd *
find . ! -name 'iw4x_00.iwd' -type d -exec rm -rf {} +
find . ! -name 'iw4x_00.iwd' -type f -exec rm -rf {} +
cd ..
cd iw4x_01/
zip -r iw4x_01.iwd *
find . ! -name 'iw4x_01.iwd' -type d -exec rm -rf {} +
find . ! -name 'iw4x_01.iwd' -type f -exec rm -rf {} +
cd ..
cd ..
rm LICENSE
rm README.md
rm -rf .github
zip -r release.zip *
