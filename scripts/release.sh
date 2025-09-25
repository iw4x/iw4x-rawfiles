#!/bin/bash

###############################################
# Step 1: Prepare environment
###############################################

# Exit and fail on first failing command
set -e

# Check for sudo
if command -v sudo >/dev/null 2>&1; then SUDO='sudo'; else SUDO=''; fi

# Set work_dir to the parent of this scripts location
work_dir=$(dirname `cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd`)
iwd_files=( "iw4x_00" "iw4x_01" "iw4x_02" "iw4x_03" "iw4x_04" "iw4x_05" )

# Create required dirs
mkdir -p $work_dir/temp/{zip-files,artifact-files,launcher-files}

# Install required dependencies
$SUDO apt-get update
$SUDO apt-get install zip curl -y

###############################################
# Step 2: Create zip with all compiled rawfiles
###############################################

# Copy artifacts to zip-files dir
cp -v iw4x.exe $work_dir/temp/zip-files/
cp -v -r $work_dir/{iw4x,zone} $work_dir/temp/zip-files/

# Copy language fast files
mkdir -p $work_dir/temp/zip-files/zone/patch
cp -v $work_dir/zone_out/*/*.ff $work_dir/temp/zip-files/zone/patch/

# Zip iwd_files
mkdir -p $work_dir/temp/zip-files/iw4x
for iwd in "${iwd_files[@]}"; do
    pushd $work_dir/temp/zip-files/iw4x/$iwd
    # Set consistent timestamps for all files
    find . -exec touch -t 200001010000.00 {} +
    # Sort files for zipping, -X for deterministic zip
    find . -name '*' -print0 | LC_ALL=C sort -z | xargs -0 zip -X $iwd.zip
    mv -v $iwd.zip $work_dir/temp/zip-files/iw4x/$iwd.iwd
    popd
    rm -r $work_dir/temp/zip-files/iw4x/$iwd
done

# Add zonebuilder-wrapper
pushd $work_dir/temp/zip-files/
curl -L https://github.com/iw4x/zonebuilder-wrapper/releases/latest/download/zonebuilder-i686-pc-windows-msvc.zip -o zonebuilder.zip
unzip zonebuilder.zip
rm zonebuilder.zip
popd

# Create release.zip in artifacts-folder with all rawfiles
pushd $work_dir/temp/zip-files/
zip -r -X release.zip *
mv -v $work_dir/temp/zip-files/release.zip $work_dir/temp/artifact-files/release.zip
popd

###############################################
# Step 3: Create launcher files
###############################################

# Move iwd_files to launcher files
mkdir -p $work_dir/temp/launcher-files/iw4x
for iwd in "${iwd_files[@]}"; do
    mv -v $work_dir/temp/zip-files/iw4x/$iwd.iwd $work_dir/temp/launcher-files/iw4x/$iwd.iwd
done

# Move executable files to launcher files
mv -v $work_dir/temp/zip-files/{iw4x.exe,zonebuilder.exe} $work_dir/temp/launcher-files/

# Create launcher zip in launcher-folder with all smaller rawfiles
pushd $work_dir/temp/zip-files/
zip -r -X __launcher_archive.zip *
mv -v $work_dir/temp/zip-files/__launcher_archive.zip $work_dir/temp/launcher-files/__launcher_archive.zip
popd

###############################################
# Step 4: Cleanup
###############################################

rm -rf $work_dir/temp/zip-files
