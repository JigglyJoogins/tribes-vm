#!/bin/bash

# With pug server running
./taserver.sh -d pugsettings -q "ta.dodgesdomain.com" -p 50

set -ex

docker cp taserver_pugsettings_50:/app/Tribes/TribesGame/CookedPC/* CookedPC

docker stop taserver_pugsettings_50

docker rm -v taserver_pugsettings_50

function install_tamods_package() {
  tmp_file=$(mktemp) # tmp file for download
  tmp_dir=$(mktemp -d) # tmp dir for extracted files

  wget -q -O "$tmp_file" "$1"
  unzip -q "$tmp_file" -d "$tmp_dir"
  cp -r $tmp_dir/\!TRIBESDIR/TribesGame/CookedPC/* "CookedPC"

  rm "$tmp_file"
  rm -rf "$tmp_dir"
}

# all dependencies of community-maps from https://tamods-update.s3-ap-southeast-2.amazonaws.com/packageconfig.yaml
install_tamods_package "https://tamods-update.s3-ap-southeast-2.amazonaws.com/packages/master-refshadercache.zip"
install_tamods_package "https://tamods-update.s3-ap-southeast-2.amazonaws.com/packages/dodge-map-common.zip"
install_tamods_package "https://tamods-update.s3-ap-southeast-2.amazonaws.com/packages/dodge-map-pack-4.zip"
install_tamods_package "https://tamods-update.s3-ap-southeast-2.amazonaws.com/packages/dodge-treacherous-series.zip"
install_tamods_package "https://tamods-update.s3-ap-southeast-2.amazonaws.com/packages/dodge-arena-series.zip"
install_tamods_package "https://tamods-update.s3-ap-southeast-2.amazonaws.com/packages/evil-map-common.zip"
install_tamods_package "https://tamods-update.s3-ap-southeast-2.amazonaws.com/packages/evil-map-pack-2.zip"
install_tamods_package "https://tamods-update.s3-ap-southeast-2.amazonaws.com/packages/kali-map-pack.zip"
install_tamods_package "https://tamods-update.s3-ap-southeast-2.amazonaws.com/packages/nerve-map-pack.zip"
install_tamods_package "https://tamods-update.s3-ap-southeast-2.amazonaws.com/packages/cro-map-pack.zip"