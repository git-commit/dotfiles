#!/bin/bash
sudo cp -vf /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
sudo reflector --verbose -l 20 -p http --sort rate --save /etc/pacman.d/mirrorlist
