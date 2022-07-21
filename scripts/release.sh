#!/bin/bash

sudo apt update >> /dev/null && sudo apt install zip -y >> /dev/null # Ensure zip is up to date.

cd iw4x/

# iw4x_00
cd iw4x_00/
zip -r iw4x_00.iwd *
mv iw4x_00.iwd ../
cd .. 
rm -rf iw4x_00/

# iw4x_01
cd iw4x_01/
zip -r iw4x_01.iwd *
mv iw4x_01.iwd ../
cd ..
rm -rf iw4x_01/

# iw4x_02
cd iw4x_02/
zip -r iw4x_02.iwd *
mv iw4x_02.iwd ../
cd ..
rm -rf iw4x_02/


# Cleanup
cd ..
rm LICENSE
rm README.md
rm -rf .github
rm -rf scripts
zip -r release.zip *
