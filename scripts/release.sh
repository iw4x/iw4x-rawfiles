#!/bin/bash

# set work_dir to the parent of this scripts location
work_dir=$(dirname `cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd`)
iwd_files=( "iw4x_00" "iw4x_01" "iw4x_02" "iw4x_03" "iw4x_04" "iw4x_05" )

# ensure dependencies are installed
sudo apt update >> /dev/null && sudo apt install zip curl -y >> /dev/null

# create release dir
mkdir $work_dir/release

# copy artifacts to release dir
cp iw4x.exe $work_dir/release/
cp iw4sp.exe $work_dir/release/
cp -r $work_dir/zone/ $work_dir/release/
cp -r $work_dir/iw4x/ $work_dir/release/
# copy language fast files
mkdir -p $work_dir/release/zone/patch
cp $work_dir/zone_out/*/*.ff $work_dir/release/zone/patch/

# zip iwd_files
for iwd in "${iwd_files[@]}"; do
    pushd $work_dir/release/iw4x/$iwd
    zip -r $iwd.zip *
    mv $iwd.zip $work_dir/release/iw4x/$iwd.iwd
    popd
    rm -r $work_dir/release/iw4x/$iwd
done

# add zonebuilder-wrapper
pushd $work_dir/release/
curl -L https://github.com/mxve/zonebuilder-wrapper/releases/latest/download/zonebuilder-i686-pc-windows-msvc.zip -o zonebuilder.zip
unzip zonebuilder.zip
rm zonebuilder.zip
popd

# create release.zip from release dir
pushd $work_dir/release/
zip -r release.zip *
mv release.zip $work_dir
popd

# cleanup
rm -r release
