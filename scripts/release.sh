#!/bin/bash

# Exit and fail on first failing command
set -e

# Check for sudo
if command -v sudo >/dev/null 2>&1; then SUDO='sudo'; else SUDO=''; fi

# set work_dir to the parent of this scripts location
work_dir=$(dirname `cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd`)
iwd_files=( "iw4x_00" "iw4x_01" "iw4x_02" "iw4x_03" "iw4x_04" "iw4x_05" )

# ensure dependencies are installed
$SUDO apt-get update
$SUDO apt-get install zip curl -y

# create dirs
mkdir -p $work_dir/{zip-files,launcher-files}

# copy artifacts to zip-files dir
cp iw4x.exe $work_dir/launcher-files/
cp -r $work_dir/{iw4x,zone} $work_dir/zip-files/

# copy language fast files
mkdir -p $work_dir/zip-files/zone/patch
cp $work_dir/zone_out/*/*.ff $work_dir/zip-files/zone/patch/

# zip iwd_files
mkdir -p $work_dir/launcher-files/iw4x
for iwd in "${iwd_files[@]}"; do
    pushd $work_dir/zip-files/iw4x/$iwd
    # Set consistent timestamps for all files
    find . -exec touch -t 200001010000.00 {} +
    # Sort files for zipping, -X for deterministic zip
    find . -name '*' -print0 | LC_ALL=C sort -z | xargs -0 zip -X $iwd.zip
    mv $iwd.zip $work_dir/launcher-files/iw4x/$iwd.iwd
    popd
    rm -r $work_dir/zip-files/iw4x/$iwd
done

# add zonebuilder-wrapper
pushd $work_dir/launcher-files/
curl -L https://github.com/iw4x/zonebuilder-wrapper/releases/latest/download/zonebuilder-i686-pc-windows-msvc.zip -o zonebuilder.zip
unzip zonebuilder.zip
rm zonebuilder.zip
popd

# create release.zip from release.zip dir
pushd $work_dir/zip-files/
zip -r -X release.zip *
mv release.zip $work_dir/launcher-files/
popd

# cleanup
rm -r {zip-files,zone_out}
