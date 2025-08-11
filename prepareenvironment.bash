#!/bin/bash
sudo add-apt-repository -y ppa:apptainer/ppa
sudo apt update
sudo apt install -y apptainer libarchive-tools
sudo singularity build Isabella.sif docker://makarius/isabelle:Isabelle2025
wget https://www.isa-afp.org/release/afp-current.tar.gz
bsdtar -xvf afp-current.tar.gz
rm afp-current.tar.gz
mv afp-*/ afp-current
