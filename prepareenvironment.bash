#!/bin/bash
sudo apt update
sudo apt install -y wget libarchive-tools
wget https://isabelle.in.tum.de/dist/Isabelle2025_linux.tar.gz
tar -xvf Isabelle2025.tar.gz
wget https://www.isa-afp.org/release/afp-current.tar.gz
bsdtar -xvf afp-current.tar.gz
rm afp-current.tar.gz
mv afp-*/ afp-current
